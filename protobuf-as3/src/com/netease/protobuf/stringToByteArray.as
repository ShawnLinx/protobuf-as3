package com.netease.protobuf
{
   import flash.utils.ByteArray;
   
   public function stringToByteArray(s:String) : ByteArray
   {
      var ba:ByteArray = new ByteArray();
      ba.length = s.length;
      for(var i:uint = 0; i < s.length; i++)
      {
         ba[i] = s.charCodeAt(i);
      }
      return ba;
   }
}
