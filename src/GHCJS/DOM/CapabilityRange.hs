{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CapabilityRange
       (js_getMax, getMax, js_getMin, getMin, js_getSupported,
        getSupported, CapabilityRange, castToCapabilityRange,
        gTypeCapabilityRange)
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

 
foreign import javascript unsafe "$1[\"max\"]" js_getMax ::
        JSRef CapabilityRange -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CapabilityRange.max Mozilla CapabilityRange.max documentation> 
getMax :: (MonadIO m) => CapabilityRange -> m (JSRef a)
getMax self = liftIO (js_getMax (unCapabilityRange self))
 
foreign import javascript unsafe "$1[\"min\"]" js_getMin ::
        JSRef CapabilityRange -> IO (JSRef a)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CapabilityRange.min Mozilla CapabilityRange.min documentation> 
getMin :: (MonadIO m) => CapabilityRange -> m (JSRef a)
getMin self = liftIO (js_getMin (unCapabilityRange self))
 
foreign import javascript unsafe "($1[\"supported\"] ? 1 : 0)"
        js_getSupported :: JSRef CapabilityRange -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CapabilityRange.supported Mozilla CapabilityRange.supported documentation> 
getSupported :: (MonadIO m) => CapabilityRange -> m Bool
getSupported self
  = liftIO (js_getSupported (unCapabilityRange self))
#else
module GHCJS.DOM.CapabilityRange (
  ) where
#endif
