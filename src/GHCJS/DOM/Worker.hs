{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Worker
       (js_newWorker, newWorker, js_postMessage, postMessage,
        js_terminate, terminate, message, Worker, castToWorker,
        gTypeWorker)
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

 
foreign import javascript unsafe "new window[\"Worker\"]($1)"
        js_newWorker :: JSString -> IO (JSRef Worker)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker Mozilla Worker documentation> 
newWorker ::
          (MonadIO m, ToJSString scriptUrl) => scriptUrl -> m Worker
newWorker scriptUrl
  = liftIO
      (js_newWorker (toJSString scriptUrl) >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"postMessage\"]($2, $3)"
        js_postMessage ::
        JSRef Worker ->
          JSRef SerializedScriptValue -> JSRef MessagePort -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.postMessage Mozilla Worker.postMessage documentation> 
postMessage ::
            (MonadIO m, IsSerializedScriptValue message) =>
              Worker -> Maybe message -> Maybe MessagePort -> m ()
postMessage self message messagePort
  = liftIO
      (js_postMessage (unWorker self)
         (maybe jsNull (unSerializedScriptValue . toSerializedScriptValue)
            message)
         (maybe jsNull unMessagePort messagePort))
 
foreign import javascript unsafe "$1[\"terminate\"]()" js_terminate
        :: JSRef Worker -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.terminate Mozilla Worker.terminate documentation> 
terminate :: (MonadIO m) => Worker -> m ()
terminate self = liftIO (js_terminate (unWorker self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Worker.onmessage Mozilla Worker.onmessage documentation> 
message :: EventName Worker MessageEvent
message = unsafeEventName (toJSString "message")
#else
module GHCJS.DOM.Worker (
  ) where
#endif
