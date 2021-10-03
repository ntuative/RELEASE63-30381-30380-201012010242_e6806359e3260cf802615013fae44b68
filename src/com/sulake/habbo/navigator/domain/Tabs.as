package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_375:int = 1;
      
      public static const const_219:int = 2;
      
      public static const const_302:int = 3;
      
      public static const const_318:int = 4;
      
      public static const const_201:int = 5;
      
      public static const const_379:int = 1;
      
      public static const const_772:int = 2;
      
      public static const const_799:int = 3;
      
      public static const const_723:int = 4;
      
      public static const const_199:int = 5;
      
      public static const const_648:int = 6;
      
      public static const const_570:int = 7;
      
      public static const const_250:int = 8;
      
      public static const const_326:int = 9;
      
      public static const const_1643:int = 10;
      
      public static const const_609:int = 11;
      
      public static const const_519:int = 12;
       
      
      private var var_399:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_399 = new Array();
         this.var_399.push(new Tab(this._navigator,const_375,const_519,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_421));
         this.var_399.push(new Tab(this._navigator,const_219,const_379,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_421));
         this.var_399.push(new Tab(this._navigator,const_318,const_609,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_979));
         this.var_399.push(new Tab(this._navigator,const_302,const_199,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_421));
         this.var_399.push(new Tab(this._navigator,const_201,const_250,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_585));
         this.setSelectedTab(const_375);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_318;
      }
      
      public function get tabs() : Array
      {
         return this.var_399;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_399)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_399)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_399)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
