package com.netease.protobuf.fieldDescriptors
{
   import com.netease.protobuf.Int64;
   import com.netease.protobuf.ReadUtils;
   import com.netease.protobuf.RepeatedFieldDescriptor;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WriteUtils;
   import com.netease.protobuf.WritingBuffer;
   import flash.utils.IDataInput;
   
   public final class RepeatedFieldDescriptor$TYPE_SFIXED64 extends RepeatedFieldDescriptor
   {
       
      
      public function RepeatedFieldDescriptor$TYPE_SFIXED64(fullName:String, name:String, tag:uint)
      {
         super();
         this.fullName = fullName;
         this._name = name;
         this.tag = tag;
      }
      
      override public function get nonPackedWireType() : int
      {
         return WireType.FIXED_64_BIT;
      }
      
      override public function get type() : Class
      {
         return Array;
      }
      
      override public function get elementType() : Class
      {
         return Int64;
      }
      
      override public function readSingleField(input:IDataInput) : *
      {
         return ReadUtils.read$TYPE_SFIXED64(input);
      }
      
      override public function writeSingleField(output:WritingBuffer, value:*) : void
      {
         WriteUtils.write$TYPE_SFIXED64(output,value);
      }
   }
}
