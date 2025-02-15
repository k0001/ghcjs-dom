{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.SVGAnimatedInteger
       (js_setBaseVal, setBaseVal, js_getBaseVal, getBaseVal,
        js_getAnimVal, getAnimVal, SVGAnimatedInteger,
        castToSVGAnimatedInteger, gTypeSVGAnimatedInteger)
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

 
foreign import javascript unsafe "$1[\"baseVal\"] = $2;"
        js_setBaseVal :: JSRef SVGAnimatedInteger -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger.baseVal Mozilla SVGAnimatedInteger.baseVal documentation> 
setBaseVal :: (MonadIO m) => SVGAnimatedInteger -> Int -> m ()
setBaseVal self val
  = liftIO (js_setBaseVal (unSVGAnimatedInteger self) val)
 
foreign import javascript unsafe "$1[\"baseVal\"]" js_getBaseVal ::
        JSRef SVGAnimatedInteger -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger.baseVal Mozilla SVGAnimatedInteger.baseVal documentation> 
getBaseVal :: (MonadIO m) => SVGAnimatedInteger -> m Int
getBaseVal self
  = liftIO (js_getBaseVal (unSVGAnimatedInteger self))
 
foreign import javascript unsafe "$1[\"animVal\"]" js_getAnimVal ::
        JSRef SVGAnimatedInteger -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGAnimatedInteger.animVal Mozilla SVGAnimatedInteger.animVal documentation> 
getAnimVal :: (MonadIO m) => SVGAnimatedInteger -> m Int
getAnimVal self
  = liftIO (js_getAnimVal (unSVGAnimatedInteger self))
#else
module GHCJS.DOM.SVGAnimatedInteger (
  ) where
#endif
