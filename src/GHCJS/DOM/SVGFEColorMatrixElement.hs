{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEColorMatrixElement
       (pattern SVG_FECOLORMATRIX_TYPE_UNKNOWN,
        pattern SVG_FECOLORMATRIX_TYPE_MATRIX,
        pattern SVG_FECOLORMATRIX_TYPE_SATURATE,
        pattern SVG_FECOLORMATRIX_TYPE_HUEROTATE,
        pattern SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA, js_getIn1, getIn1,
        js_getValues, getValues, SVGFEColorMatrixElement,
        castToSVGFEColorMatrixElement, gTypeSVGFEColorMatrixElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM (EventName, unsafeEventName)
import GHCJS.DOM.Enums

pattern SVG_FECOLORMATRIX_TYPE_UNKNOWN = 0
pattern SVG_FECOLORMATRIX_TYPE_MATRIX = 1
pattern SVG_FECOLORMATRIX_TYPE_SATURATE = 2
pattern SVG_FECOLORMATRIX_TYPE_HUEROTATE = 3
pattern SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA = 4
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        JSRef SVGFEColorMatrixElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.in1 Mozilla SVGFEColorMatrixElement.in1 documentation> 
getIn1 ::
       (MonadIO m) =>
         SVGFEColorMatrixElement -> m (Maybe SVGAnimatedString)
getIn1 self
  = liftIO
      ((js_getIn1 (unSVGFEColorMatrixElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"values\"]" js_getValues ::
        JSRef SVGFEColorMatrixElement -> IO (JSRef SVGAnimatedNumberList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEColorMatrixElement.values Mozilla SVGFEColorMatrixElement.values documentation> 
getValues ::
          (MonadIO m) =>
            SVGFEColorMatrixElement -> m (Maybe SVGAnimatedNumberList)
getValues self
  = liftIO
      ((js_getValues (unSVGFEColorMatrixElement self)) >>= fromJSRef)
#else
module GHCJS.DOM.SVGFEColorMatrixElement (
  ) where
#endif
