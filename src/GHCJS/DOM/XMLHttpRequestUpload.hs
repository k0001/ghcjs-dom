{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.XMLHttpRequestUpload
       (abort, error, load, loadEnd, loadStart, progress,
        XMLHttpRequestUpload, castToXMLHttpRequestUpload,
        gTypeXMLHttpRequestUpload)
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


-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.onabort Mozilla XMLHttpRequestUpload.onabort documentation> 
abort :: EventName XMLHttpRequestUpload XMLHttpRequestProgressEvent
abort = unsafeEventName (toJSString "abort")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.onerror Mozilla XMLHttpRequestUpload.onerror documentation> 
error :: EventName XMLHttpRequestUpload XMLHttpRequestProgressEvent
error = unsafeEventName (toJSString "error")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.onload Mozilla XMLHttpRequestUpload.onload documentation> 
load :: EventName XMLHttpRequestUpload XMLHttpRequestProgressEvent
load = unsafeEventName (toJSString "load")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.onloadend Mozilla XMLHttpRequestUpload.onloadend documentation> 
loadEnd :: EventName XMLHttpRequestUpload ProgressEvent
loadEnd = unsafeEventName (toJSString "loadend")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.onloadstart Mozilla XMLHttpRequestUpload.onloadstart documentation> 
loadStart :: EventName XMLHttpRequestUpload ProgressEvent
loadStart = unsafeEventName (toJSString "loadstart")

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload.onprogress Mozilla XMLHttpRequestUpload.onprogress documentation> 
progress ::
           EventName XMLHttpRequestUpload XMLHttpRequestProgressEvent
progress = unsafeEventName (toJSString "progress")
#else
module GHCJS.DOM.XMLHttpRequestUpload (
  ) where
#endif
