{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.EventSource
       (js_newEventSource, newEventSource, js_close, close,
        pattern CONNECTING, pattern OPEN, pattern CLOSED, js_getUrl,
        getUrl, js_getWithCredentials, getWithCredentials,
        js_getReadyState, getReadyState, open, message, error, EventSource,
        castToEventSource, gTypeEventSource)
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

 
foreign import javascript unsafe
        "new window[\"EventSource\"]($1,\n$2)" js_newEventSource ::
        JSString -> JSRef Dictionary -> IO (JSRef EventSource)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource Mozilla EventSource documentation> 
newEventSource ::
               (MonadIO m, ToJSString url, IsDictionary eventSourceInit) =>
                 url -> Maybe eventSourceInit -> m EventSource
newEventSource url eventSourceInit
  = liftIO
      (js_newEventSource (toJSString url)
         (maybe jsNull (unDictionary . toDictionary) eventSourceInit)
         >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        JSRef EventSource -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.close Mozilla EventSource.close documentation> 
close :: (MonadIO m) => EventSource -> m ()
close self = liftIO (js_close (unEventSource self))
pattern CONNECTING = 0
pattern OPEN = 1
pattern CLOSED = 2
 
foreign import javascript unsafe "$1[\"url\"]" js_getUrl ::
        JSRef EventSource -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.url Mozilla EventSource.url documentation> 
getUrl ::
       (MonadIO m, FromJSString result) => EventSource -> m result
getUrl self
  = liftIO (fromJSString <$> (js_getUrl (unEventSource self)))
 
foreign import javascript unsafe
        "($1[\"withCredentials\"] ? 1 : 0)" js_getWithCredentials ::
        JSRef EventSource -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.withCredentials Mozilla EventSource.withCredentials documentation> 
getWithCredentials :: (MonadIO m) => EventSource -> m Bool
getWithCredentials self
  = liftIO (js_getWithCredentials (unEventSource self))
 
foreign import javascript unsafe "$1[\"readyState\"]"
        js_getReadyState :: JSRef EventSource -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.readyState Mozilla EventSource.readyState documentation> 
getReadyState :: (MonadIO m) => EventSource -> m Word
getReadyState self = liftIO (js_getReadyState (unEventSource self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.onopen Mozilla EventSource.onopen documentation> 
open :: EventName EventSource Event
open = unsafeEventName (toJSString "open")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.onmessage Mozilla EventSource.onmessage documentation> 
message :: EventName EventSource MessageEvent
message = unsafeEventName (toJSString "message")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/EventSource.onerror Mozilla EventSource.onerror documentation> 
error :: EventName EventSource UIEvent
error = unsafeEventName (toJSString "error")
#else
module GHCJS.DOM.EventSource (
  ) where
#endif
