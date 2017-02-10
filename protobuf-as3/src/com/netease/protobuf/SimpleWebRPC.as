package com.netease.protobuf
{
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public final class SimpleWebRPC
   {
      
      private static const REF:Dictionary = new Dictionary();
       
      
      private var urlPrefix:String;
      
      public function SimpleWebRPC(urlPrefix:String)
      {
         super();
         this.urlPrefix = urlPrefix;
      }
      
      public function send(qualifiedMethodName:String, requestMessage:Message, rpcResult:Function, responseClass:Class) : void
      {
         var loader:URLLoader = null;
         var errorEventHandler:Function = function(event:Event):void
         {
            delete REF[loader];
            rpcResult(event);
         };
         loader = new URLLoader();
         REF[loader] = true;
         loader.dataFormat = URLLoaderDataFormat.BINARY;
         loader.addEventListener(Event.COMPLETE,function(event:Event):void
         {
            delete REF[loader];
            var responseMessage:Message = new responseClass();
            responseMessage.mergeFrom(loader.data);
            rpcResult(responseMessage);
         });
         loader.addEventListener(IOErrorEvent.IO_ERROR,errorEventHandler);
         loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,errorEventHandler);
         var request:URLRequest = new URLRequest(this.urlPrefix + qualifiedMethodName.replace(/\./g,"/").replace(/^((com|org|net)\/\w+\/\w+\/)?(.*)$/,"$3"));
         var requestContent:ByteArray = new ByteArray();
         requestMessage.writeTo(requestContent);
         if(requestContent.length != 0)
         {
            request.data = requestContent;
         }
         request.contentType = "application/x-protobuf";
         request.method = URLRequestMethod.POST;
         loader.load(request);
      }
   }
}
