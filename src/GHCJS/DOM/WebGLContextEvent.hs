{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WebGLContextEvent
       (js_getStatusMessage, getStatusMessage, WebGLContextEvent,
        castToWebGLContextEvent, gTypeWebGLContextEvent)
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

 
foreign import javascript unsafe "$1[\"statusMessage\"]"
        js_getStatusMessage :: JSRef WebGLContextEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WebGLContextEvent.statusMessage Mozilla WebGLContextEvent.statusMessage documentation> 
getStatusMessage ::
                 (MonadIO m, FromJSString result) => WebGLContextEvent -> m result
getStatusMessage self
  = liftIO
      (fromJSString <$> (js_getStatusMessage (unWebGLContextEvent self)))
#else
module GHCJS.DOM.WebGLContextEvent (
  ) where
#endif
