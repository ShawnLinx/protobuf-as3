package google.protobuf.UninterpretedOption
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.ReadUtils;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WriteUtils;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BOOL;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import flash.errors.IOError;
   import flash.utils.IDataInput;
   
   public final dynamic class NamePart extends Message
   {
      
      public static const NAME_PART:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("google.protobuf.UninterpretedOption.NamePart.name_part","namePart",1 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const IS_EXTENSION:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("google.protobuf.UninterpretedOption.NamePart.is_extension","isExtension",2 << 3 | WireType.VARINT);
       
      
      public var namePart:String;
      
      public var isExtension:Boolean;
      
      public function NamePart()
      {
         super();
      }
      
      override final function writeToBuffer(output:WritingBuffer) : void
      {
         var fieldKey:* = undefined;
         WriteUtils.writeTag(output,WireType.LENGTH_DELIMITED,1);
         WriteUtils.write$TYPE_STRING(output,this.namePart);
         WriteUtils.writeTag(output,WireType.VARINT,2);
         WriteUtils.write$TYPE_BOOL(output,this.isExtension);
         for(fieldKey in this)
         {
            super.writeUnknown(output,fieldKey);
         }
      }
      
      override final function readFromSlice(input:IDataInput, bytesAfterSlice:uint) : void
      {
         var tag:uint = 0;
         var name_part$count:uint = 0;
         var is_extension$count:uint = 0;
         while(input.bytesAvailable > bytesAfterSlice)
         {
            tag = ReadUtils.read$TYPE_UINT32(input);
            switch(tag >> 3)
            {
               case 1:
                  if(name_part$count != 0)
                  {
                     throw new IOError("Bad data format: NamePart.namePart cannot be set twice.");
                  }
                  name_part$count++;
                  this.namePart = ReadUtils.read$TYPE_STRING(input);
                  continue;
               case 2:
                  if(is_extension$count != 0)
                  {
                     throw new IOError("Bad data format: NamePart.isExtension cannot be set twice.");
                  }
                  is_extension$count++;
                  this.isExtension = ReadUtils.read$TYPE_BOOL(input);
                  continue;
               default:
                  super.readUnknown(input,tag);
                  continue;
            }
         }
      }
   }
}
