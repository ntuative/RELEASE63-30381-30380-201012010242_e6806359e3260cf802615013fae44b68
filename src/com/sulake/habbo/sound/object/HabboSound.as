package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1073:Sound = null;
      
      private var _soundChannel:SoundChannel = null;
      
      private var var_490:Number;
      
      private var var_1314:Boolean;
      
      public function HabboSound(param1:Sound)
      {
         super();
         this.var_1073 = param1;
         this.var_1073.addEventListener(Event.COMPLETE,this.method_5);
         this.var_490 = 1;
         this.var_1314 = false;
      }
      
      public function play() : Boolean
      {
         this.var_1314 = false;
         this._soundChannel = this.var_1073.play(0);
         this.volume = this.var_490;
         return true;
      }
      
      public function stop() : Boolean
      {
         this._soundChannel.stop();
         return true;
      }
      
      public function get volume() : Number
      {
         return this.var_490;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_490 = param1;
         if(this._soundChannel != null)
         {
            this._soundChannel.soundTransform = new SoundTransform(this.var_490);
         }
      }
      
      public function get position() : Number
      {
         return this._soundChannel.position;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get length() : Number
      {
         return this.var_1073.length;
      }
      
      public function get ready() : Boolean
      {
         return !this.var_1073.isBuffering;
      }
      
      public function get finished() : Boolean
      {
         return !this.var_1314;
      }
      
      private function method_5(param1:Event) : void
      {
         this.var_1314 = true;
      }
   }
}
