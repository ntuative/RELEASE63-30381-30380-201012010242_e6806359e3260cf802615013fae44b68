package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1666:int = 0;
      
      public static const const_1404:int = 1;
      
      public static const const_1301:int = 2;
      
      public static const const_1638:int = 3;
      
      public static const const_1587:int = 4;
      
      public static const const_1632:int = 5;
      
      public static const const_1284:int = 10;
      
      public static const const_1739:int = 11;
      
      public static const const_1646:int = 12;
      
      public static const const_1583:int = 13;
      
      public static const const_1737:int = 16;
      
      public static const const_1609:int = 17;
      
      public static const const_1591:int = 18;
      
      public static const const_1789:int = 19;
      
      public static const const_1620:int = 20;
      
      public static const const_1672:int = 22;
      
      public static const const_1629:int = 23;
      
      public static const const_1581:int = 24;
      
      public static const const_1622:int = 25;
      
      public static const const_1651:int = 26;
      
      public static const const_1691:int = 27;
      
      public static const const_1772:int = 28;
      
      public static const const_1584:int = 29;
      
      public static const const_1707:int = 100;
      
      public static const const_1566:int = 101;
      
      public static const const_1683:int = 102;
      
      public static const const_1610:int = 103;
      
      public static const const_1578:int = 104;
      
      public static const const_1716:int = 105;
      
      public static const const_1653:int = 106;
      
      public static const const_1635:int = 107;
      
      public static const const_1756:int = 108;
      
      public static const const_1679:int = 109;
      
      public static const const_1776:int = 110;
      
      public static const const_1690:int = 111;
      
      public static const const_1692:int = 112;
      
      public static const const_1701:int = 113;
      
      public static const const_1742:int = 114;
      
      public static const const_1598:int = 115;
      
      public static const const_1758:int = 116;
      
      public static const const_1767:int = 117;
      
      public static const const_1597:int = 118;
      
      public static const const_1787:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1404:
            case const_1284:
               return "banned";
            case const_1301:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
