package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["ServiceManager"] = const_178;
         param1["bound_to_parent_rect"] = const_90;
         param1["child_window"] = const_948;
         param1["embedded_controller"] = const_1037;
         param1["resize_to_accommodate_children"] = const_66;
         param1["input_event_processor"] = const_27;
         param1["internal_event_handling"] = const_742;
         param1["mouse_dragging_target"] = const_203;
         param1["mouse_dragging_trigger"] = const_359;
         param1["mouse_scaling_target"] = const_277;
         param1["mouse_scaling_trigger"] = const_513;
         param1["horizontal_mouse_scaling_trigger"] = const_202;
         param1["vertical_mouse_scaling_trigger"] = const_209;
         param1["observe_parent_input_events"] = const_1087;
         param1["optimize_region_to_layout_size"] = const_422;
         param1["parent_window"] = const_1095;
         param1["relative_horizontal_scale_center"] = const_173;
         param1["relative_horizontal_scale_fixed"] = const_123;
         param1["relative_horizontal_scale_move"] = const_323;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_992;
         param1["relative_scale_fixed"] = const_695;
         param1["relative_scale_move"] = const_933;
         param1["relative_scale_strech"] = const_928;
         param1["relative_vertical_scale_center"] = const_166;
         param1["relative_vertical_scale_fixed"] = const_131;
         param1["relative_vertical_scale_move"] = const_352;
         param1["relative_vertical_scale_strech"] = const_360;
         param1["on_resize_align_left"] = const_592;
         param1["on_resize_align_right"] = const_525;
         param1["on_resize_align_center"] = const_497;
         param1["on_resize_align_top"] = const_697;
         param1["on_resize_align_bottom"] = const_499;
         param1["on_resize_align_middle"] = const_466;
         param1["on_accommodate_align_left"] = const_986;
         param1["on_accommodate_align_right"] = const_438;
         param1["on_accommodate_align_center"] = const_634;
         param1["on_accommodate_align_top"] = const_1019;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_782;
         param1["route_input_events_to_parent"] = const_500;
         param1["use_parent_graphic_context"] = const_31;
         param1["draggable_with_mouse"] = const_924;
         param1["scalable_with_mouse"] = const_1026;
         param1["reflect_horizontal_resize_to_parent"] = const_473;
         param1["reflect_vertical_resize_to_parent"] = const_509;
         param1["reflect_resize_to_parent"] = const_262;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
