package google.protobuf
{
   import com.netease.protobuf.Message;
   import com.netease.protobuf.ReadUtils;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WriteUtils;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import flash.utils.IDataInput;
   
   public final dynamic class ServiceOptions extends Message
   {
      
      [ArrayElementType("Function")]
      public static const extensionReadFunctions:Array = [];
      
      public static const UNINTERPRETED_OPTION:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("google.protobuf.ServiceOptions.uninterpreted_option","uninterpretedOption",999 << 3 | WireType.LENGTH_DELIMITED,function():Class
      {
         return UninterpretedOption;
      });
       
      
      [ArrayElementType("google.protobuf.UninterpretedOption")]
      public var uninterpretedOption:Array;
      
      public function ServiceOptions()
      {
         this.uninterpretedOption = [];
         super();
      }
      
      override final function writeToBuffer(output:WritingBuffer) : void
      {
         var fieldKey:* = undefined;
         for(var uninterpretedOption$index:uint = 0; uninterpretedOption$index < this.uninterpretedOption.length; uninterpretedOption$index++)
         {
            WriteUtils.writeTag(output,WireType.LENGTH_DELIMITED,999);
            WriteUtils.write$TYPE_MESSAGE(output,this.uninterpretedOption[uninterpretedOption$index]);
         }
         for(fieldKey in this)
         {
            super.writeExtensionOrUnknown(output,fieldKey);
         }
      }
      
      override final function readFromSlice(input:IDataInput, bytesAfterSlice:uint) : void
      {
         var tag:uint = 0;
         while(input.bytesAvailable > bytesAfterSlice)
         {
            tag = ReadUtils.read$TYPE_UINT32(input);
            switch(tag >> 3)
            {
               case 999:
                  this.uninterpretedOption.push(ReadUtils.read$TYPE_MESSAGE(input,new UninterpretedOption()));
                  continue;
               default:
                  super.readExtensionOrUnknown(extensionReadFunctions,input,tag);
                  continue;
            }
         }
      }
   }
}
