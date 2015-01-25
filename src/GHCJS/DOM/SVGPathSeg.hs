{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGPathSeg
       (cPATHSEG_UNKNOWN, cPATHSEG_CLOSEPATH, cPATHSEG_MOVETO_ABS,
        cPATHSEG_MOVETO_REL, cPATHSEG_LINETO_ABS, cPATHSEG_LINETO_REL,
        cPATHSEG_CURVETO_CUBIC_ABS, cPATHSEG_CURVETO_CUBIC_REL,
        cPATHSEG_CURVETO_QUADRATIC_ABS, cPATHSEG_CURVETO_QUADRATIC_REL,
        cPATHSEG_ARC_ABS, cPATHSEG_ARC_REL, cPATHSEG_LINETO_HORIZONTAL_ABS,
        cPATHSEG_LINETO_HORIZONTAL_REL, cPATHSEG_LINETO_VERTICAL_ABS,
        cPATHSEG_LINETO_VERTICAL_REL, cPATHSEG_CURVETO_CUBIC_SMOOTH_ABS,
        cPATHSEG_CURVETO_CUBIC_SMOOTH_REL,
        cPATHSEG_CURVETO_QUADRATIC_SMOOTH_ABS,
        cPATHSEG_CURVETO_QUADRATIC_SMOOTH_REL,
        ghcjs_dom_svg_path_seg_get_path_seg_type, svgPathSegGetPathSegType,
        ghcjs_dom_svg_path_seg_get_path_seg_type_as_letter,
        svgPathSegGetPathSegTypeAsLetter, SVGPathSeg, IsSVGPathSeg,
        castToSVGPathSeg, gTypeSVGPathSeg, toSVGPathSeg)
       where
import GHCJS.Types
import GHCJS.Foreign
import GHCJS.Marshal
import Data.Int
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM

cPATHSEG_UNKNOWN = 0
cPATHSEG_CLOSEPATH = 1
cPATHSEG_MOVETO_ABS = 2
cPATHSEG_MOVETO_REL = 3
cPATHSEG_LINETO_ABS = 4
cPATHSEG_LINETO_REL = 5
cPATHSEG_CURVETO_CUBIC_ABS = 6
cPATHSEG_CURVETO_CUBIC_REL = 7
cPATHSEG_CURVETO_QUADRATIC_ABS = 8
cPATHSEG_CURVETO_QUADRATIC_REL = 9
cPATHSEG_ARC_ABS = 10
cPATHSEG_ARC_REL = 11
cPATHSEG_LINETO_HORIZONTAL_ABS = 12
cPATHSEG_LINETO_HORIZONTAL_REL = 13
cPATHSEG_LINETO_VERTICAL_ABS = 14
cPATHSEG_LINETO_VERTICAL_REL = 15
cPATHSEG_CURVETO_CUBIC_SMOOTH_ABS = 16
cPATHSEG_CURVETO_CUBIC_SMOOTH_REL = 17
cPATHSEG_CURVETO_QUADRATIC_SMOOTH_ABS = 18
cPATHSEG_CURVETO_QUADRATIC_SMOOTH_REL = 19
 
foreign import javascript unsafe "$1[\"pathSegType\"]"
        ghcjs_dom_svg_path_seg_get_path_seg_type ::
        JSRef SVGPathSeg -> IO Word
 
svgPathSegGetPathSegType :: (IsSVGPathSeg self) => self -> IO Word
svgPathSegGetPathSegType self
  = ghcjs_dom_svg_path_seg_get_path_seg_type
      (unSVGPathSeg (toSVGPathSeg self))
 
foreign import javascript unsafe "$1[\"pathSegTypeAsLetter\"]"
        ghcjs_dom_svg_path_seg_get_path_seg_type_as_letter ::
        JSRef SVGPathSeg -> IO JSString
 
svgPathSegGetPathSegTypeAsLetter ::
                                 (IsSVGPathSeg self, FromJSString result) => self -> IO result
svgPathSegGetPathSegTypeAsLetter self
  = fromJSString <$>
      (ghcjs_dom_svg_path_seg_get_path_seg_type_as_letter
         (unSVGPathSeg (toSVGPathSeg self)))
#else
module GHCJS.DOM.SVGPathSeg (
  module Graphics.UI.Gtk.WebKit.DOM.SVGPathSeg
  ) where
import Graphics.UI.Gtk.WebKit.DOM.SVGPathSeg
#endif