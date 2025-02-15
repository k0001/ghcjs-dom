{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGMaskElement
       (js_getMaskUnits, getMaskUnits, js_getMaskContentUnits,
        getMaskContentUnits, js_getX, getX, js_getY, getY, js_getWidth,
        getWidth, js_getHeight, getHeight, SVGMaskElement,
        castToSVGMaskElement, gTypeSVGMaskElement)
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

 
foreign import javascript unsafe "$1[\"maskUnits\"]"
        js_getMaskUnits ::
        JSRef SVGMaskElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.maskUnits Mozilla SVGMaskElement.maskUnits documentation> 
getMaskUnits ::
             (MonadIO m) => SVGMaskElement -> m (Maybe SVGAnimatedEnumeration)
getMaskUnits self
  = liftIO ((js_getMaskUnits (unSVGMaskElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"maskContentUnits\"]"
        js_getMaskContentUnits ::
        JSRef SVGMaskElement -> IO (JSRef SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.maskContentUnits Mozilla SVGMaskElement.maskContentUnits documentation> 
getMaskContentUnits ::
                    (MonadIO m) => SVGMaskElement -> m (Maybe SVGAnimatedEnumeration)
getMaskContentUnits self
  = liftIO
      ((js_getMaskContentUnits (unSVGMaskElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"x\"]" js_getX ::
        JSRef SVGMaskElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.x Mozilla SVGMaskElement.x documentation> 
getX ::
     (MonadIO m) => SVGMaskElement -> m (Maybe SVGAnimatedLength)
getX self
  = liftIO ((js_getX (unSVGMaskElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"y\"]" js_getY ::
        JSRef SVGMaskElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.y Mozilla SVGMaskElement.y documentation> 
getY ::
     (MonadIO m) => SVGMaskElement -> m (Maybe SVGAnimatedLength)
getY self
  = liftIO ((js_getY (unSVGMaskElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef SVGMaskElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.width Mozilla SVGMaskElement.width documentation> 
getWidth ::
         (MonadIO m) => SVGMaskElement -> m (Maybe SVGAnimatedLength)
getWidth self
  = liftIO ((js_getWidth (unSVGMaskElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef SVGMaskElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGMaskElement.height Mozilla SVGMaskElement.height documentation> 
getHeight ::
          (MonadIO m) => SVGMaskElement -> m (Maybe SVGAnimatedLength)
getHeight self
  = liftIO ((js_getHeight (unSVGMaskElement self)) >>= fromJSRef)
#else
module GHCJS.DOM.SVGMaskElement (
  ) where
#endif
