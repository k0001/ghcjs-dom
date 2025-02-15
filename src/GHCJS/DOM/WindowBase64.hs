{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WindowBase64
       (js_atob, atob, js_btoa, btoa, WindowBase64, castToWindowBase64,
        gTypeWindowBase64)
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

 
foreign import javascript unsafe "$1[\"atob\"]($2)" js_atob ::
        JSRef WindowBase64 -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowBase64.atob Mozilla WindowBase64.atob documentation> 
atob ::
     (MonadIO m, ToJSString string, FromJSString result) =>
       WindowBase64 -> string -> m result
atob self string
  = liftIO
      (fromJSString <$>
         (js_atob (unWindowBase64 self) (toJSString string)))
 
foreign import javascript unsafe "$1[\"btoa\"]($2)" js_btoa ::
        JSRef WindowBase64 -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WindowBase64.btoa Mozilla WindowBase64.btoa documentation> 
btoa ::
     (MonadIO m, ToJSString string, FromJSString result) =>
       WindowBase64 -> string -> m result
btoa self string
  = liftIO
      (fromJSString <$>
         (js_btoa (unWindowBase64 self) (toJSString string)))
#else
module GHCJS.DOM.WindowBase64 (
  ) where
#endif
