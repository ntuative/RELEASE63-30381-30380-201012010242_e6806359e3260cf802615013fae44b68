package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_858:BigInteger;
      
      private var var_2085:BigInteger;
      
      private var var_1503:BigInteger;
      
      private var var_2086:BigInteger;
      
      private var var_1214:BigInteger;
      
      private var var_1502:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1214 = param1;
         this.var_1502 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1214.toString() + ",generator: " + this.var_1502.toString() + ",secret: " + param1);
         this.var_858 = new BigInteger();
         this.var_858.fromRadix(param1,param2);
         this.var_2085 = this.var_1502.modPow(this.var_858,this.var_1214);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1503 = new BigInteger();
         this.var_1503.fromRadix(param1,param2);
         this.var_2086 = this.var_1503.modPow(this.var_858,this.var_1214);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2085.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2086.toRadix(param1);
      }
   }
}
