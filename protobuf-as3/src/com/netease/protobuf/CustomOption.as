package com.netease.protobuf
{
   import flash.utils.ByteArray;
   import flash.utils.getDefinitionByName;
   import google.protobuf.MethodOptions;
   import google.protobuf.ServiceOptions;
   
   public final class CustomOption
   {
       
      
      public function CustomOption()
      {
         super();
      }
      
      public static function getMethodOptions(methodFullName:String) : MethodOptions
      {
         var optionsBytes:ByteArray = null;
         var result:MethodOptions = null;
         var m:Array = methodFullName.match(/^(.+)\.[^\.]+$/);
         if(m == null)
         {
            return null;
         }
         var serviceClass:Class = Class(getDefinitionByName(m[1]));
         try
         {
            optionsBytes = serviceClass.OPTIONS_BYTES_BY_METHOD_NAME[methodFullName];
         }
         catch(e:ReferenceError)
         {
            return null;
         }
         if(optionsBytes)
         {
            result = new MethodOptions();
            result.mergeFrom(optionsBytes);
            return result;
         }
         return null;
      }
      
      public static function getServiceOptions(serviceClass:Class) : ServiceOptions
      {
         var optionsBytes:ByteArray = null;
         try
         {
            optionsBytes = serviceClass.OPTIONS_BYTES;
         }
         catch(e:ReferenceError)
         {
            return null;
         }
         var result:ServiceOptions = new ServiceOptions();
         result.mergeFrom(optionsBytes);
         return result;
      }
   }
}
