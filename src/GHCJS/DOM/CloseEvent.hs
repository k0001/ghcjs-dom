{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.CloseEvent
       (js_getWasClean, getWasClean, js_getCode, getCode, js_getReason,
        getReason, CloseEvent, castToCloseEvent, gTypeCloseEvent)
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

 
foreign import javascript unsafe "($1[\"wasClean\"] ? 1 : 0)"
        js_getWasClean :: JSRef CloseEvent -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent.wasClean Mozilla CloseEvent.wasClean documentation> 
getWasClean :: (MonadIO m) => CloseEvent -> m Bool
getWasClean self = liftIO (js_getWasClean (unCloseEvent self))
 
foreign import javascript unsafe "$1[\"code\"]" js_getCode ::
        JSRef CloseEvent -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent.code Mozilla CloseEvent.code documentation> 
getCode :: (MonadIO m) => CloseEvent -> m Word
getCode self = liftIO (js_getCode (unCloseEvent self))
 
foreign import javascript unsafe "$1[\"reason\"]" js_getReason ::
        JSRef CloseEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/CloseEvent.reason Mozilla CloseEvent.reason documentation> 
getReason ::
          (MonadIO m, FromJSString result) => CloseEvent -> m result
getReason self
  = liftIO (fromJSString <$> (js_getReason (unCloseEvent self)))
#else
module GHCJS.DOM.CloseEvent (
  ) where
#endif
