package google.protobuf
{
   import com.netease.protobuf.Int64;
   import com.netease.protobuf.Message;
   import com.netease.protobuf.ReadUtils;
   import com.netease.protobuf.UInt64;
   import com.netease.protobuf.WireType;
   import com.netease.protobuf.WriteUtils;
   import com.netease.protobuf.WritingBuffer;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_BYTES;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_DOUBLE;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_INT64;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_STRING;
   import com.netease.protobuf.fieldDescriptors.FieldDescriptor$TYPE_UINT64;
   import com.netease.protobuf.fieldDescriptors.RepeatedFieldDescriptor$TYPE_MESSAGE;
   import flash.errors.IOError;
   import flash.utils.ByteArray;
   import flash.utils.IDataInput;
   import google.protobuf.UninterpretedOption.NamePart;
   
   public final dynamic class UninterpretedOption extends Message
   {
      
      public static const NAME:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("google.protobuf.UninterpretedOption.name","name",2 << 3 | WireType.LENGTH_DELIMITED,function():Class
      {
         return NamePart;
      });
      
      public static const IDENTIFIER_VALUE:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("google.protobuf.UninterpretedOption.identifier_value","identifierValue",3 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const POSITIVE_INT_VALUE:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("google.protobuf.UninterpretedOption.positive_int_value","positiveIntValue",4 << 3 | WireType.VARINT);
      
      public static const NEGATIVE_INT_VALUE:FieldDescriptor$TYPE_INT64 = new FieldDescriptor$TYPE_INT64("google.protobuf.UninterpretedOption.negative_int_value","negativeIntValue",5 << 3 | WireType.VARINT);
      
      public static const DOUBLE_VALUE:FieldDescriptor$TYPE_DOUBLE = new FieldDescriptor$TYPE_DOUBLE("google.protobuf.UninterpretedOption.double_value","doubleValue",6 << 3 | WireType.FIXED_64_BIT);
      
      public static const STRING_VALUE:FieldDescriptor$TYPE_BYTES = new FieldDescriptor$TYPE_BYTES("google.protobuf.UninterpretedOption.string_value","stringValue",7 << 3 | WireType.LENGTH_DELIMITED);
      
      public static const AGGREGATE_VALUE:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("google.protobuf.UninterpretedOption.aggregate_value","aggregateValue",8 << 3 | WireType.LENGTH_DELIMITED);
       
      
      [ArrayElementType("google.protobuf.UninterpretedOption.NamePart")]
      public var name:Array;
      
      private var identifier_value$field:String;
      
      private var positive_int_value$field:UInt64;
      
      private var negative_int_value$field:Int64;
      
      private var double_value$field:Number;
      
      private var hasField$0:uint = 0;
      
      private var string_value$field:ByteArray;
      
      private var aggregate_value$field:String;
      
      public function UninterpretedOption()
      {
         this.name = [];
         super();
      }
      
      public function clearIdentifierValue() : void
      {
         this.identifier_value$field = null;
      }
      
      public function get hasIdentifierValue() : Boolean
      {
         return this.identifier_value$field != null;
      }
      
      public function set identifierValue(value:String) : void
      {
         this.identifier_value$field = value;
      }
      
      public function get identifierValue() : String
      {
         return this.identifier_value$field;
      }
      
      public function clearPositiveIntValue() : void
      {
         this.positive_int_value$field = null;
      }
      
      public function get hasPositiveIntValue() : Boolean
      {
         return this.positive_int_value$field != null;
      }
      
      public function set positiveIntValue(value:UInt64) : void
      {
         this.positive_int_value$field = value;
      }
      
      public function get positiveIntValue() : UInt64
      {
         return this.positive_int_value$field;
      }
      
      public function clearNegativeIntValue() : void
      {
         this.negative_int_value$field = null;
      }
      
      public function get hasNegativeIntValue() : Boolean
      {
         return this.negative_int_value$field != null;
      }
      
      public function set negativeIntValue(value:Int64) : void
      {
         this.negative_int_value$field = value;
      }
      
      public function get negativeIntValue() : Int64
      {
         return this.negative_int_value$field;
      }
      
      public function clearDoubleValue() : void
      {
         this.hasField$0 = this.hasField$0 & 4294967294;
         this.double_value$field = new Number();
      }
      
      public function get hasDoubleValue() : Boolean
      {
         return (this.hasField$0 & 1) != 0;
      }
      
      public function set doubleValue(value:Number) : void
      {
         this.hasField$0 = this.hasField$0 | 1;
         this.double_value$field = value;
      }
      
      public function get doubleValue() : Number
      {
         return this.double_value$field;
      }
      
      public function clearStringValue() : void
      {
         this.string_value$field = null;
      }
      
      public function get hasStringValue() : Boolean
      {
         return this.string_value$field != null;
      }
      
      public function set stringValue(value:ByteArray) : void
      {
         this.string_value$field = value;
      }
      
      public function get stringValue() : ByteArray
      {
         return this.string_value$field;
      }
      
      public function clearAggregateValue() : void
      {
         this.aggregate_value$field = null;
      }
      
      public function get hasAggregateValue() : Boolean
      {
         return this.aggregate_value$field != null;
      }
      
      public function set aggregateValue(value:String) : void
      {
         this.aggregate_value$field = value;
      }
      
      public function get aggregateValue() : String
      {
         return this.aggregate_value$field;
      }
      
      override final function writeToBuffer(output:WritingBuffer) : void
      {
         var fieldKey:* = undefined;
         for(var name$index:uint = 0; name$index < this.name.length; name$index++)
         {
            WriteUtils.writeTag(output,WireType.LENGTH_DELIMITED,2);
            WriteUtils.write$TYPE_MESSAGE(output,this.name[name$index]);
         }
         if(this.hasIdentifierValue)
         {
            WriteUtils.writeTag(output,WireType.LENGTH_DELIMITED,3);
            WriteUtils.write$TYPE_STRING(output,this.identifier_value$field);
         }
         if(this.hasPositiveIntValue)
         {
            WriteUtils.writeTag(output,WireType.VARINT,4);
            WriteUtils.write$TYPE_UINT64(output,this.positive_int_value$field);
         }
         if(this.hasNegativeIntValue)
         {
            WriteUtils.writeTag(output,WireType.VARINT,5);
            WriteUtils.write$TYPE_INT64(output,this.negative_int_value$field);
         }
         if(this.hasDoubleValue)
         {
            WriteUtils.writeTag(output,WireType.FIXED_64_BIT,6);
            WriteUtils.write$TYPE_DOUBLE(output,this.double_value$field);
         }
         if(this.hasStringValue)
         {
            WriteUtils.writeTag(output,WireType.LENGTH_DELIMITED,7);
            WriteUtils.write$TYPE_BYTES(output,this.string_value$field);
         }
         if(this.hasAggregateValue)
         {
            WriteUtils.writeTag(output,WireType.LENGTH_DELIMITED,8);
            WriteUtils.write$TYPE_STRING(output,this.aggregate_value$field);
         }
         for(fieldKey in this)
         {
            super.writeUnknown(output,fieldKey);
         }
      }
      
      override final function readFromSlice(input:IDataInput, bytesAfterSlice:uint) : void
      {
         var tag:uint = 0;
         var identifier_value$count:uint = 0;
         var positive_int_value$count:uint = 0;
         var negative_int_value$count:uint = 0;
         var double_value$count:uint = 0;
         var string_value$count:uint = 0;
         var aggregate_value$count:uint = 0;
         while(input.bytesAvailable > bytesAfterSlice)
         {
            tag = ReadUtils.read$TYPE_UINT32(input);
            switch(tag >> 3)
            {
               case 2:
                  this.name.push(ReadUtils.read$TYPE_MESSAGE(input,new NamePart()));
                  continue;
               case 3:
                  if(identifier_value$count != 0)
                  {
                     throw new IOError("Bad data format: UninterpretedOption.identifierValue cannot be set twice.");
                  }
                  identifier_value$count++;
                  this.identifierValue = ReadUtils.read$TYPE_STRING(input);
                  continue;
               case 4:
                  if(positive_int_value$count != 0)
                  {
                     throw new IOError("Bad data format: UninterpretedOption.positiveIntValue cannot be set twice.");
                  }
                  positive_int_value$count++;
                  this.positiveIntValue = ReadUtils.read$TYPE_UINT64(input);
                  continue;
               case 5:
                  if(negative_int_value$count != 0)
                  {
                     throw new IOError("Bad data format: UninterpretedOption.negativeIntValue cannot be set twice.");
                  }
                  negative_int_value$count++;
                  this.negativeIntValue = ReadUtils.read$TYPE_INT64(input);
                  continue;
               case 6:
                  if(double_value$count != 0)
                  {
                     throw new IOError("Bad data format: UninterpretedOption.doubleValue cannot be set twice.");
                  }
                  double_value$count++;
                  this.doubleValue = ReadUtils.read$TYPE_DOUBLE(input);
                  continue;
               case 7:
                  if(string_value$count != 0)
                  {
                     throw new IOError("Bad data format: UninterpretedOption.stringValue cannot be set twice.");
                  }
                  string_value$count++;
                  this.stringValue = ReadUtils.read$TYPE_BYTES(input);
                  continue;
               case 8:
                  if(aggregate_value$count != 0)
                  {
                     throw new IOError("Bad data format: UninterpretedOption.aggregateValue cannot be set twice.");
                  }
                  aggregate_value$count++;
                  this.aggregateValue = ReadUtils.read$TYPE_STRING(input);
                  continue;
               default:
                  super.readUnknown(input,tag);
                  continue;
            }
         }
      }
   }
}
