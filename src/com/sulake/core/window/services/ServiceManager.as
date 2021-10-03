package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2612:uint;
      
      private var var_131:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_225:IWindowContext;
      
      private var var_989:IMouseDraggingService;
      
      private var var_988:IMouseScalingService;
      
      private var var_990:IMouseListenerService;
      
      private var var_993:IFocusManagerService;
      
      private var var_991:IToolTipAgentService;
      
      private var var_992:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2612 = 0;
         this.var_131 = param2;
         this.var_225 = param1;
         this.var_989 = new WindowMouseDragger(param2);
         this.var_988 = new WindowMouseScaler(param2);
         this.var_990 = new WindowMouseListener(param2);
         this.var_993 = new FocusManager(param2);
         this.var_991 = new WindowToolTipAgent(param2);
         this.var_992 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_989 != null)
         {
            this.var_989.dispose();
            this.var_989 = null;
         }
         if(this.var_988 != null)
         {
            this.var_988.dispose();
            this.var_988 = null;
         }
         if(this.var_990 != null)
         {
            this.var_990.dispose();
            this.var_990 = null;
         }
         if(this.var_993 != null)
         {
            this.var_993.dispose();
            this.var_993 = null;
         }
         if(this.var_991 != null)
         {
            this.var_991.dispose();
            this.var_991 = null;
         }
         if(this.var_992 != null)
         {
            this.var_992.dispose();
            this.var_992 = null;
         }
         this.var_131 = null;
         this.var_225 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_989;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_988;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_990;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_993;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_991;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_992;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
