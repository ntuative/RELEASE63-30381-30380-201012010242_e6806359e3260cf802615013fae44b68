package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_667;
         param1["bitmap"] = const_556;
         param1["border"] = const_612;
         param1["border_notify"] = const_1362;
         param1["button"] = const_431;
         param1["button_thick"] = const_642;
         param1["button_icon"] = const_1296;
         param1["button_group_left"] = const_746;
         param1["button_group_center"] = const_791;
         param1["button_group_right"] = const_610;
         param1["canvas"] = const_761;
         param1["checkbox"] = const_731;
         param1["closebutton"] = const_1007;
         param1["container"] = const_369;
         param1["container_button"] = const_717;
         param1["display_object_wrapper"] = const_709;
         param1["dropmenu"] = const_416;
         param1["dropmenu_item"] = const_482;
         param1["frame"] = const_365;
         param1["frame_notify"] = const_1260;
         param1["header"] = const_771;
         param1["icon"] = const_987;
         param1["itemgrid"] = const_1015;
         param1["itemgrid_horizontal"] = const_396;
         param1["itemgrid_vertical"] = const_563;
         param1["itemlist"] = const_1076;
         param1["itemlist_horizontal"] = const_338;
         param1["itemlist_vertical"] = const_377;
         param1["maximizebox"] = WINDOW_TYPE_MAXIMIZEBOX;
         param1["menu"] = const_1381;
         param1["menu_item"] = const_1299;
         param1["submenu"] = const_1061;
         param1["minimizebox"] = const_1496;
         param1["notify"] = const_1504;
         param1["ServiceManager"] = const_792;
         param1["password"] = const_755;
         param1["radiobutton"] = const_764;
         param1["region"] = const_561;
         param1["restorebox"] = const_1379;
         param1["scaler"] = const_683;
         param1["scaler_horizontal"] = const_1429;
         param1["scaler_vertical"] = const_1254;
         param1["scrollbar_horizontal"] = const_483;
         param1["scrollbar_vertical"] = const_657;
         param1["scrollbar_slider_button_up"] = const_922;
         param1["scrollbar_slider_button_down"] = const_1085;
         param1["scrollbar_slider_button_left"] = const_964;
         param1["scrollbar_slider_button_right"] = const_914;
         param1["scrollbar_slider_bar_horizontal"] = const_981;
         param1["scrollbar_slider_bar_vertical"] = const_918;
         param1["scrollbar_slider_track_horizontal"] = const_998;
         param1["scrollbar_slider_track_vertical"] = const_936;
         param1["scrollable_itemlist"] = const_1356;
         param1["scrollable_itemlist_vertical"] = const_530;
         param1["scrollable_itemlist_horizontal"] = const_978;
         param1["selector"] = const_810;
         param1["selector_list"] = const_740;
         param1["submenu"] = const_1061;
         param1["tab_button"] = const_738;
         param1["tab_container_button"] = const_968;
         param1["tab_context"] = const_361;
         param1["tab_content"] = const_953;
         param1["tab_selector"] = const_693;
         param1["text"] = const_802;
         param1["input"] = const_777;
         param1["toolbar"] = const_1401;
         param1["tooltip"] = const_362;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
