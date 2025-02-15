{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEGaussianBlurElement
       (js_setStdDeviation, setStdDeviation, pattern SVG_EDGEMODE_UNKNOWN,
        pattern SVG_EDGEMODE_DUPLICATE, pattern SVG_EDGEMODE_WRAP,
        pattern SVG_EDGEMODE_NONE, js_getIn1, getIn1, js_getStdDeviationX,
        getStdDeviationX, js_getStdDeviationY, getStdDeviationY,
        js_getEdgeMode, getEdgeMode, SVGFEGaussianBlurElement,
        castToSVGFEGaussianBlurElement, gTypeSVGFEGaussianBlurElement)
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

 
foreign import javascript unsafe "$1[\"setStdDeviation\"]($2, $3)"
        js_setStdDeviation ::
        JSRef SVGFEGaussianBlurElement -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.setStdDeviation Mozilla SVGFEGaussianBlurElement.setStdDeviation documentation> 
setStdDeviation ::
                (MonadIO m) => SVGFEGaussianBlurElement -> Float -> Float -> m ()
setStdDeviation self stdDeviationX stdDeviationY
  = liftIO
      (js_setStdDeviation (unSVGFEGaussianBlurElement self) stdDeviationX
         stdDeviationY)
pattern SVG_EDGEMODE_UNKNOWN = 0
pattern SVG_EDGEMODE_DUPLICATE = 1
pattern SVG_EDGEMODE_WRAP = 2
pattern SVG_EDGEMODE_NONE = 3
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        JSRef SVGFEGaussianBlurElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.in1 Mozilla SVGFEGaussianBlurElement.in1 documentation> 
getIn1 ::
       (MonadIO m) =>
         SVGFEGaussianBlurElement -> m (Maybe SVGAnimatedString)
getIn1 self
  = liftIO
      ((js_getIn1 (unSVGFEGaussianBlurElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"stdDeviationX\"]"
        js_getStdDeviationX ::
        JSRef SVGFEGaussianBlurElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.stdDeviationX Mozilla SVGFEGaussianBlurElement.stdDeviationX documentation> 
getStdDeviationX ::
                 (MonadIO m) =>
                   SVGFEGaussianBlurElement -> m (Maybe SVGAnimatedNumber)
getStdDeviationX self
  = liftIO
      ((js_getStdDeviationX (unSVGFEGaussianBlurElement self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"stdDeviationY\"]"
        js_getStdDeviationY ::
        JSRef SVGFEGaussianBlurElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.stdDeviationY Mozilla SVGFEGaussianBlurElement.stdDeviationY documentation> 
getStdDeviationY ::
                 (MonadIO m) =>
                   SVGFEGaussianBlurElement -> m (Maybe SVGAnimatedNumber)
getStdDeviationY self
  = liftIO
      ((js_getStdDeviationY (unSVGFEGaussianBlurElement self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"edgeMode\"]" js_getEdgeMode
        ::
        JSRef SVGFEGaussianBlurElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEGaussianBlurElement.edgeMode Mozilla SVGFEGaussianBlurElement.edgeMode documentation> 
getEdgeMode ::
            (MonadIO m) =>
              SVGFEGaussianBlurElement -> m (Maybe SVGAnimatedEnumeration)
getEdgeMode self
  = liftIO
      ((js_getEdgeMode (unSVGFEGaussianBlurElement self)) >>= fromJSRef)
#else
module GHCJS.DOM.SVGFEGaussianBlurElement (
  ) where
#endif
