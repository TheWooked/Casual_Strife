package;

import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

#if disable_preloader_assets
@:dox(hide) class ManifestResources {
	public static var preloadLibraries:Array<Dynamic>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;

	public static function init (config:Dynamic):Void {
		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();
	}
}
#else
@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_strife_font_regular_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_strife_timer_regular_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		data = '{"name":null,"assets":"aoy4:pathy34:assets%2Fdata%2Fdata-goes-here.txty4:sizezy4:typey4:TEXTy2:idR1y7:preloadtgoR2i10644R3y4:FONTy9:classNamey45:__ASSET__assets_fonts_strife_font_regular_otfR5y40:assets%2Ffonts%2FStrife_font-Regular.otfR6tgoR2i3136R3R7R8y46:__ASSET__assets_fonts_strife_timer_regular_ttfR5y41:assets%2Ffonts%2FStrife_timer-Regular.ttfR6tgoR0y33:assets%2Fimages%2F1%2Fbombud1.pngR2i314942R3y5:IMAGER5R13R6tgoR0y33:assets%2Fimages%2F1%2Fbombud1.xmlR2i5547R3R4R5R15R6tgoR0y40:assets%2Fimages%2FEffects%2Fdust_run.pngR2i19094R3R14R5R16R6tgoR0y40:assets%2Fimages%2FEffects%2Fdust_run.xmlR2i779R3R4R5R17R6tgoR0y43:assets%2Fimages%2FEffects%2Fhit_effect1.pngR2i7870R3R14R5R18R6tgoR0y43:assets%2Fimages%2FEffects%2Fhit_effect1.xmlR2i805R3R4R5R19R6tgoR0y43:assets%2Fimages%2FEffects%2Fhit_effect2.pngR2i5680R3R14R5R20R6tgoR0y43:assets%2Fimages%2FEffects%2Fhit_effect2.xmlR2i802R3R4R5R21R6tgoR0y49:assets%2Fimages%2FEffects%2Fshort_gun_shootfx.pngR2i1194R3R14R5R22R6tgoR0y49:assets%2Fimages%2FEffects%2Fshort_gun_shootfx.xmlR2i807R3R4R5R23R6tgoR0y44:assets%2Fimages%2FEffects%2Fsmall_damage.pngR2i12226R3R14R5R24R6tgoR0y44:assets%2Fimages%2FEffects%2Fsmall_damage.xmlR2i1383R3R4R5R25R6tgoR0y38:assets%2Fimages%2FEffects%2Fsmoke1.pngR2i6967R3R14R5R26R6tgoR0y38:assets%2Fimages%2FEffects%2Fsmoke1.xmlR2i2273R3R4R5R27R6tgoR0y36:assets%2Fimages%2Fimages-go-here.txtR2zR3R4R5R28R6tgoR0y41:assets%2Fimages%2Fmain%2FKhernASSETS1.pngR2i2925490R3R14R5R29R6tgoR0y41:assets%2Fimages%2Fmain%2FKhernASSETS1.xmlR2i37007R3R4R5R30R6tgoR0y63:assets%2Fimages%2FMenu_Assets%2FButtons%2Fcheckmark_options.pngR2i24813R3R14R5R31R6tgoR0y63:assets%2Fimages%2FMenu_Assets%2FButtons%2Fcheckmark_options.xmlR2i8789R3R4R5R32R6tgoR0y58:assets%2Fimages%2FMenu_Assets%2FButtons%2Fcontrol_menu.pngR2i25585R3R14R5R33R6tgoR0y58:assets%2Fimages%2FMenu_Assets%2FButtons%2Fcontrol_menu.xmlR2i592R3R4R5R34R6tgoR0y58:assets%2Fimages%2FMenu_Assets%2FButtons%2Fcredits_menu.pngR2i25521R3R14R5R35R6tgoR0y58:assets%2Fimages%2FMenu_Assets%2FButtons%2Fcredits_menu.xmlR2i592R3R4R5R36R6tgoR0y57:assets%2Fimages%2FMenu_Assets%2FButtons%2Fextras_menu.pngR2i28699R3R14R5R37R6tgoR0y57:assets%2Fimages%2FMenu_Assets%2FButtons%2Fextras_menu.xmlR2i588R3R4R5R38R6tgoR0y59:assets%2Fimages%2FMenu_Assets%2FButtons%2Fgraphics_menu.pngR2i28310R3R14R5R39R6tgoR0y59:assets%2Fimages%2FMenu_Assets%2FButtons%2Fgraphics_menu.xmlR2i593R3R4R5R40R6tgoR0y58:assets%2Fimages%2FMenu_Assets%2FButtons%2Foptions_menu.pngR2i26747R3R14R5R41R6tgoR0y58:assets%2Fimages%2FMenu_Assets%2FButtons%2Foptions_menu.xmlR2i592R3R4R5R42R6tgoR0y57:assets%2Fimages%2FMenu_Assets%2FButtons%2Fp1mode_menu.pngR2i26195R3R14R5R43R6tgoR0y57:assets%2Fimages%2FMenu_Assets%2FButtons%2Fp1mode_menu.xmlR2i588R3R4R5R44R6tgoR0y56:assets%2Fimages%2FMenu_Assets%2FButtons%2Fsound_menu.pngR2i25542R3R14R5R45R6tgoR0y56:assets%2Fimages%2FMenu_Assets%2FButtons%2Fsound_menu.xmlR2i584R3R4R5R46R6tgoR0y56:assets%2Fimages%2FMenu_Assets%2FButtons%2Fstory_menu.pngR2i28179R3R14R5R47R6tgoR0y56:assets%2Fimages%2FMenu_Assets%2FButtons%2Fstory_menu.xmlR2i584R3R4R5R48R6tgoR0y59:assets%2Fimages%2FMenu_Assets%2FButtons%2Fsurvival_menu.pngR2i29263R3R14R5R49R6tgoR0y59:assets%2Fimages%2FMenu_Assets%2FButtons%2Fsurvival_menu.xmlR2i594R3R4R5R50R6tgoR0y57:assets%2Fimages%2FMenu_Assets%2FButtons%2Fversus_menu.pngR2i26594R3R14R5R51R6tgoR0y57:assets%2Fimages%2FMenu_Assets%2FButtons%2Fversus_menu.xmlR2i588R3R4R5R52R6tgoR0y65:assets%2Fimages%2FMenu_Assets%2FOptionsSOUNDS%2Fmaster_volume.pngR2i21882R3R14R5R53R6tgoR0y65:assets%2Fimages%2FMenu_Assets%2FOptionsSOUNDS%2Fmaster_volume.xmlR2i454R3R4R5R54R6tgoR0y66:assets%2Fimages%2FMenu_Assets%2FOptionsSOUNDS%2Fminus%20volume.pngR2i293R3R14R5R55R6tgoR0y62:assets%2Fimages%2FMenu_Assets%2FOptionsSOUNDS%2Fmusic_menu.pngR2i17184R3R14R5R56R6tgoR0y62:assets%2Fimages%2FMenu_Assets%2FOptionsSOUNDS%2Fmusic_menu.xmlR2i449R3R4R5R57R6tgoR0y65:assets%2Fimages%2FMenu_Assets%2FOptionsSOUNDS%2Fplus%20volume.pngR2i671R3R14R5R58R6tgoR0y60:assets%2Fimages%2FMenu_Assets%2FOptionsSOUNDS%2Fsfx_menu.pngR2i16663R3R14R5R59R6tgoR0y60:assets%2Fimages%2FMenu_Assets%2FOptionsSOUNDS%2Fsfx_menu.xmlR2i438R3R4R5R60R6tgoR0y71:assets%2Fimages%2FMenu_Assets%2FOptionsSOUNDS%2Fslider%20bar%20menu.pngR2i211R3R14R5R61R6tgoR0y75:assets%2Fimages%2FMenu_Assets%2FOptionsSOUNDS%2Fslider%20bar%20selected.pngR2i222R3R14R5R62R6tgoR0y70:assets%2Fimages%2FMenu_Assets%2FTitle%20Screen%2Fstart_button_idle.pngR2i309102R3R14R5R63R6tgoR0y70:assets%2Fimages%2FMenu_Assets%2FTitle%20Screen%2Fstart_button_idle.xmlR2i3145R3R4R5R64R6tgoR0y64:assets%2Fimages%2FMenu_Assets%2FTitle%20Screen%2Fstrife_logo.pngR2i152303R3R14R5R65R6tgoR0y73:assets%2Fimages%2FMenu_Assets%2FTitle%20Screen%2Fsugarmoon%20portrait.pngR2i46827R3R14R5R66R6tgoR0y61:assets%2Fimages%2FMenu_Assets%2FTitle%20Screen%2Ftitle_bg.pngR2i462564R3R14R5R67R6tgoR0y70:assets%2Fimages%2FMenu_Assets%2FTitle%20Screen%2Fwooked%20portrait.pngR2i33918R3R14R5R68R6tgoR0y45:assets%2Fimages%2FMisc_Assets%2FGO_Marker.pngR2i138052R3R14R5R69R6tgoR0y45:assets%2Fimages%2FMisc_Assets%2FGO_Marker.xmlR2i9069R3R4R5R70R6tgoR0y45:assets%2Fimages%2FMisc_Assets%2Fgo_static.pngR2i8145R3R14R5R71R6tgoR0y56:assets%2Fimages%2FMisc_Assets%2Flevel_cleared_static.pngR2i14191R3R14R5R72R6tgoR0y48:assets%2Fimages%2FMisc_Assets%2Flevel_static.pngR2i8809R3R14R5R73R6tgoR0y48:assets%2Fimages%2FMisc_Assets%2Fparry_popout.pngR2i264147R3R14R5R74R6tgoR0y48:assets%2Fimages%2FMisc_Assets%2Fparry_popout.xmlR2i1792R3R4R5R75R6tgoR0y47:assets%2Fimages%2FMisc_Assets%2Fstrife_logo.pngR2i152303R3R14R5R76R6tgoR0y39:assets%2Fimages%2FMT_Surv%2Fbackfog.pngR2i103027R3R14R5R77R6tgoR0y38:assets%2Fimages%2FMT_Surv%2Fbridge.pngR2i44278R3R14R5R78R6tgoR0y46:assets%2Fimages%2FMT_Surv%2Ffog%20survival.pngR2i242297R3R14R5R79R6tgoR0y52:assets%2Fimages%2FMT_Surv%2Fmountains%20survival.pngR2i123363R3R14R5R80R6tgoR0y36:assets%2Fimages%2FMT_Surv%2Frock.pngR2i30548R3R14R5R81R6tgoR0y44:assets%2Fimages%2FMT_Surv%2Fsky_survival.pngR2i602583R3R14R5R82R6tgoR0y36:assets%2Fmusic%2Fmusic-goes-here.txtR2zR3R4R5R83R6tgoR0y36:assets%2Fsounds%2Fsounds-go-here.txtR2zR3R4R5R84R6tgoR2i2114R3y5:MUSICR5y26:flixel%2Fsounds%2Fbeep.mp3y9:pathGroupaR86y26:flixel%2Fsounds%2Fbeep.ogghR6tgoR2i39706R3R85R5y28:flixel%2Fsounds%2Fflixel.mp3R87aR89y28:flixel%2Fsounds%2Fflixel.ogghR6tgoR2i5794R3y5:SOUNDR5R88R87aR86R88hgoR2i33629R3R91R5R90R87aR89R90hgoR2i15744R3R7R8y35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfR6tgoR2i29724R3R7R8y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfR6tgoR0y33:flixel%2Fimages%2Fui%2Fbutton.pngR2i519R3R14R5R96R6tgoR0y36:flixel%2Fimages%2Flogo%2Fdefault.pngR2i3280R3R14R5R97R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_strife_font_regular_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_strife_timer_regular_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_1_bombud1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_1_bombud1_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_dust_run_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_dust_run_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_hit_effect1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_hit_effect1_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_hit_effect2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_hit_effect2_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_short_gun_shootfx_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_short_gun_shootfx_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_small_damage_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_small_damage_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_smoke1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_effects_smoke1_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_main_khernassets1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_main_khernassets1_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_checkmark_options_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_checkmark_options_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_control_menu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_control_menu_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_credits_menu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_credits_menu_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_extras_menu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_extras_menu_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_graphics_menu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_graphics_menu_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_options_menu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_options_menu_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_p1mode_menu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_p1mode_menu_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_sound_menu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_sound_menu_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_story_menu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_story_menu_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_survival_menu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_survival_menu_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_versus_menu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_versus_menu_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_master_volume_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_master_volume_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_minus_volume_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_music_menu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_music_menu_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_plus_volume_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_sfx_menu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_sfx_menu_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_slider_bar_menu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_slider_bar_selected_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_title_screen_start_button_idle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_title_screen_start_button_idle_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_title_screen_strife_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_title_screen_sugarmoon_portrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_title_screen_title_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_title_screen_wooked_portrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_misc_assets_go_marker_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_misc_assets_go_marker_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_misc_assets_go_static_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_misc_assets_level_cleared_static_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_misc_assets_level_static_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_misc_assets_parry_popout_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_misc_assets_parry_popout_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_misc_assets_strife_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mt_surv_backfog_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mt_surv_bridge_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mt_surv_fog_survival_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mt_surv_mountains_survival_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mt_surv_rock_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mt_surv_sky_survival_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("assets/data/data-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends haxe.io.Bytes {}
@:keep @:font("export/html5/obj/webfont/Strife_font-Regular.otf") @:noCompletion #if display private #end class __ASSET__assets_fonts_strife_font_regular_otf extends lime.text.Font {}
@:keep @:font("export/html5/obj/webfont/Strife_timer-Regular.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_strife_timer_regular_ttf extends lime.text.Font {}
@:keep @:image("assets/images/1/bombud1.png") @:noCompletion #if display private #end class __ASSET__assets_images_1_bombud1_png extends lime.graphics.Image {}
@:keep @:file("assets/images/1/bombud1.xml") @:noCompletion #if display private #end class __ASSET__assets_images_1_bombud1_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Effects/dust_run.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_dust_run_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Effects/dust_run.xml") @:noCompletion #if display private #end class __ASSET__assets_images_effects_dust_run_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Effects/hit_effect1.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_hit_effect1_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Effects/hit_effect1.xml") @:noCompletion #if display private #end class __ASSET__assets_images_effects_hit_effect1_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Effects/hit_effect2.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_hit_effect2_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Effects/hit_effect2.xml") @:noCompletion #if display private #end class __ASSET__assets_images_effects_hit_effect2_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Effects/short_gun_shootfx.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_short_gun_shootfx_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Effects/short_gun_shootfx.xml") @:noCompletion #if display private #end class __ASSET__assets_images_effects_short_gun_shootfx_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Effects/small_damage.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_small_damage_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Effects/small_damage.xml") @:noCompletion #if display private #end class __ASSET__assets_images_effects_small_damage_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Effects/smoke1.png") @:noCompletion #if display private #end class __ASSET__assets_images_effects_smoke1_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Effects/smoke1.xml") @:noCompletion #if display private #end class __ASSET__assets_images_effects_smoke1_xml extends haxe.io.Bytes {}
@:keep @:file("assets/images/images-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_images_images_go_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/images/main/KhernASSETS1.png") @:noCompletion #if display private #end class __ASSET__assets_images_main_khernassets1_png extends lime.graphics.Image {}
@:keep @:file("assets/images/main/KhernASSETS1.xml") @:noCompletion #if display private #end class __ASSET__assets_images_main_khernassets1_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Menu_Assets/Buttons/checkmark_options.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_checkmark_options_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Menu_Assets/Buttons/checkmark_options.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_checkmark_options_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Menu_Assets/Buttons/control_menu.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_control_menu_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Menu_Assets/Buttons/control_menu.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_control_menu_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Menu_Assets/Buttons/credits_menu.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_credits_menu_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Menu_Assets/Buttons/credits_menu.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_credits_menu_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Menu_Assets/Buttons/extras_menu.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_extras_menu_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Menu_Assets/Buttons/extras_menu.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_extras_menu_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Menu_Assets/Buttons/graphics_menu.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_graphics_menu_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Menu_Assets/Buttons/graphics_menu.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_graphics_menu_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Menu_Assets/Buttons/options_menu.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_options_menu_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Menu_Assets/Buttons/options_menu.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_options_menu_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Menu_Assets/Buttons/p1mode_menu.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_p1mode_menu_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Menu_Assets/Buttons/p1mode_menu.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_p1mode_menu_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Menu_Assets/Buttons/sound_menu.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_sound_menu_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Menu_Assets/Buttons/sound_menu.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_sound_menu_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Menu_Assets/Buttons/story_menu.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_story_menu_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Menu_Assets/Buttons/story_menu.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_story_menu_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Menu_Assets/Buttons/survival_menu.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_survival_menu_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Menu_Assets/Buttons/survival_menu.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_survival_menu_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Menu_Assets/Buttons/versus_menu.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_versus_menu_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Menu_Assets/Buttons/versus_menu.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_buttons_versus_menu_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Menu_Assets/OptionsSOUNDS/master_volume.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_master_volume_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Menu_Assets/OptionsSOUNDS/master_volume.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_master_volume_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Menu_Assets/OptionsSOUNDS/minus volume.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_minus_volume_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Menu_Assets/OptionsSOUNDS/music_menu.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_music_menu_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Menu_Assets/OptionsSOUNDS/music_menu.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_music_menu_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Menu_Assets/OptionsSOUNDS/plus volume.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_plus_volume_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Menu_Assets/OptionsSOUNDS/sfx_menu.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_sfx_menu_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Menu_Assets/OptionsSOUNDS/sfx_menu.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_sfx_menu_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Menu_Assets/OptionsSOUNDS/slider bar menu.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_slider_bar_menu_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Menu_Assets/OptionsSOUNDS/slider bar selected.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_optionssounds_slider_bar_selected_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Menu_Assets/Title Screen/start_button_idle.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_title_screen_start_button_idle_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Menu_Assets/Title Screen/start_button_idle.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_title_screen_start_button_idle_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Menu_Assets/Title Screen/strife_logo.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_title_screen_strife_logo_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Menu_Assets/Title Screen/sugarmoon portrait.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_title_screen_sugarmoon_portrait_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Menu_Assets/Title Screen/title_bg.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_title_screen_title_bg_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Menu_Assets/Title Screen/wooked portrait.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_assets_title_screen_wooked_portrait_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Misc_Assets/GO_Marker.png") @:noCompletion #if display private #end class __ASSET__assets_images_misc_assets_go_marker_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Misc_Assets/GO_Marker.xml") @:noCompletion #if display private #end class __ASSET__assets_images_misc_assets_go_marker_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Misc_Assets/go_static.png") @:noCompletion #if display private #end class __ASSET__assets_images_misc_assets_go_static_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Misc_Assets/level_cleared_static.png") @:noCompletion #if display private #end class __ASSET__assets_images_misc_assets_level_cleared_static_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Misc_Assets/level_static.png") @:noCompletion #if display private #end class __ASSET__assets_images_misc_assets_level_static_png extends lime.graphics.Image {}
@:keep @:image("assets/images/Misc_Assets/parry_popout.png") @:noCompletion #if display private #end class __ASSET__assets_images_misc_assets_parry_popout_png extends lime.graphics.Image {}
@:keep @:file("assets/images/Misc_Assets/parry_popout.xml") @:noCompletion #if display private #end class __ASSET__assets_images_misc_assets_parry_popout_xml extends haxe.io.Bytes {}
@:keep @:image("assets/images/Misc_Assets/strife_logo.png") @:noCompletion #if display private #end class __ASSET__assets_images_misc_assets_strife_logo_png extends lime.graphics.Image {}
@:keep @:image("assets/images/MT_Surv/backfog.png") @:noCompletion #if display private #end class __ASSET__assets_images_mt_surv_backfog_png extends lime.graphics.Image {}
@:keep @:image("assets/images/MT_Surv/bridge.png") @:noCompletion #if display private #end class __ASSET__assets_images_mt_surv_bridge_png extends lime.graphics.Image {}
@:keep @:image("assets/images/MT_Surv/fog survival.png") @:noCompletion #if display private #end class __ASSET__assets_images_mt_surv_fog_survival_png extends lime.graphics.Image {}
@:keep @:image("assets/images/MT_Surv/mountains survival.png") @:noCompletion #if display private #end class __ASSET__assets_images_mt_surv_mountains_survival_png extends lime.graphics.Image {}
@:keep @:image("assets/images/MT_Surv/rock.png") @:noCompletion #if display private #end class __ASSET__assets_images_mt_surv_rock_png extends lime.graphics.Image {}
@:keep @:image("assets/images/MT_Surv/sky_survival.png") @:noCompletion #if display private #end class __ASSET__assets_images_mt_surv_sky_survival_png extends lime.graphics.Image {}
@:keep @:file("assets/music/music-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_music_music_goes_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/sounds/sounds-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_sounds_sounds_go_here_txt extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/5,0,2/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/5,0,2/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/5,0,2/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/5,0,2/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("export/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("export/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/5,0,2/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/5,0,2/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__assets_fonts_strife_font_regular_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_strife_font_regular_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/Strife_font-Regular"; #else ascender = 666; descender = -18; height = 774; numGlyphs = 75; underlinePosition = -100; underlineThickness = 50; unitsPerEM = 1000; #end name = "Strife_font Regular"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_strife_timer_regular_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_strife_timer_regular_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/Strife_timer-Regular"; #else ascender = 666; descender = 0; height = 756; numGlyphs = 16; underlinePosition = -100; underlineThickness = 50; unitsPerEM = 1000; #end name = "Strife_timer Regular"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__assets_fonts_strife_font_regular_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_strife_font_regular_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_strife_font_regular_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_strife_timer_regular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_strife_timer_regular_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_strife_timer_regular_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__assets_fonts_strife_font_regular_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_strife_font_regular_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_strife_font_regular_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_strife_timer_regular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_strife_timer_regular_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_strife_timer_regular_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end

#end