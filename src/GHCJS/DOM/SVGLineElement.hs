{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGLineElement
       (js_getX1, getX1, js_getY1, getY1, js_getX2, getX2, js_getY2,
        getY2, SVGLineElement, castToSVGLineElement, gTypeSVGLineElement)
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

 
foreign import javascript unsafe "$1[\"x1\"]" js_getX1 ::
        JSRef SVGLineElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.x1 Mozilla SVGLineElement.x1 documentation> 
getX1 ::
      (MonadIO m) => SVGLineElement -> m (Maybe SVGAnimatedLength)
getX1 self
  = liftIO ((js_getX1 (unSVGLineElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"y1\"]" js_getY1 ::
        JSRef SVGLineElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.y1 Mozilla SVGLineElement.y1 documentation> 
getY1 ::
      (MonadIO m) => SVGLineElement -> m (Maybe SVGAnimatedLength)
getY1 self
  = liftIO ((js_getY1 (unSVGLineElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"x2\"]" js_getX2 ::
        JSRef SVGLineElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.x2 Mozilla SVGLineElement.x2 documentation> 
getX2 ::
      (MonadIO m) => SVGLineElement -> m (Maybe SVGAnimatedLength)
getX2 self
  = liftIO ((js_getX2 (unSVGLineElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"y2\"]" js_getY2 ::
        JSRef SVGLineElement -> IO (JSRef SVGAnimatedLength)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGLineElement.y2 Mozilla SVGLineElement.y2 documentation> 
getY2 ::
      (MonadIO m) => SVGLineElement -> m (Maybe SVGAnimatedLength)
getY2 self
  = liftIO ((js_getY2 (unSVGLineElement self)) >>= fromJSRef)
#else
module GHCJS.DOM.SVGLineElement (
  ) where
#endif
