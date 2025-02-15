{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGFEDisplacementMapElement
       (pattern SVG_CHANNEL_UNKNOWN, pattern SVG_CHANNEL_R,
        pattern SVG_CHANNEL_G, pattern SVG_CHANNEL_B,
        pattern SVG_CHANNEL_A, js_getIn1, getIn1, js_getIn2, getIn2,
        js_getScale, getScale, js_getXChannelSelector, getXChannelSelector,
        js_getYChannelSelector, getYChannelSelector,
        SVGFEDisplacementMapElement, castToSVGFEDisplacementMapElement,
        gTypeSVGFEDisplacementMapElement)
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

pattern SVG_CHANNEL_UNKNOWN = 0
pattern SVG_CHANNEL_R = 1
pattern SVG_CHANNEL_G = 2
pattern SVG_CHANNEL_B = 3
pattern SVG_CHANNEL_A = 4
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        JSRef SVGFEDisplacementMapElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.in1 Mozilla SVGFEDisplacementMapElement.in1 documentation> 
getIn1 ::
       (MonadIO m) =>
         SVGFEDisplacementMapElement -> m (Maybe SVGAnimatedString)
getIn1 self
  = liftIO
      ((js_getIn1 (unSVGFEDisplacementMapElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"in2\"]" js_getIn2 ::
        JSRef SVGFEDisplacementMapElement -> IO (JSRef SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.in2 Mozilla SVGFEDisplacementMapElement.in2 documentation> 
getIn2 ::
       (MonadIO m) =>
         SVGFEDisplacementMapElement -> m (Maybe SVGAnimatedString)
getIn2 self
  = liftIO
      ((js_getIn2 (unSVGFEDisplacementMapElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"scale\"]" js_getScale ::
        JSRef SVGFEDisplacementMapElement -> IO (JSRef SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.scale Mozilla SVGFEDisplacementMapElement.scale documentation> 
getScale ::
         (MonadIO m) =>
           SVGFEDisplacementMapElement -> m (Maybe SVGAnimatedNumber)
getScale self
  = liftIO
      ((js_getScale (unSVGFEDisplacementMapElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"xChannelSelector\"]"
        js_getXChannelSelector ::
        JSRef SVGFEDisplacementMapElement ->
          IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.xChannelSelector Mozilla SVGFEDisplacementMapElement.xChannelSelector documentation> 
getXChannelSelector ::
                    (MonadIO m) =>
                      SVGFEDisplacementMapElement -> m (Maybe SVGAnimatedEnumeration)
getXChannelSelector self
  = liftIO
      ((js_getXChannelSelector (unSVGFEDisplacementMapElement self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"yChannelSelector\"]"
        js_getYChannelSelector ::
        JSRef SVGFEDisplacementMapElement ->
          IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEDisplacementMapElement.yChannelSelector Mozilla SVGFEDisplacementMapElement.yChannelSelector documentation> 
getYChannelSelector ::
                    (MonadIO m) =>
                      SVGFEDisplacementMapElement -> m (Maybe SVGAnimatedEnumeration)
getYChannelSelector self
  = liftIO
      ((js_getYChannelSelector (unSVGFEDisplacementMapElement self)) >>=
         fromJSRef)
#else
module GHCJS.DOM.SVGFEDisplacementMapElement (
  ) where
#endif
