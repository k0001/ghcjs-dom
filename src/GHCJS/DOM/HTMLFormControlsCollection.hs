{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLFormControlsCollection
       (js__get, _get, js_namedItem, namedItem,
        HTMLFormControlsCollection, castToHTMLFormControlsCollection,
        gTypeHTMLFormControlsCollection)
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

 
foreign import javascript unsafe "$1[\"_get\"]($2)" js__get ::
        JSRef HTMLFormControlsCollection -> Word -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection._get Mozilla HTMLFormControlsCollection._get documentation> 
_get ::
     (MonadIO m) => HTMLFormControlsCollection -> Word -> m (Maybe Node)
_get self index
  = liftIO
      ((js__get (unHTMLFormControlsCollection self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        js_namedItem ::
        JSRef HTMLFormControlsCollection -> JSString -> IO (JSRef Node)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormControlsCollection.namedItem Mozilla HTMLFormControlsCollection.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            HTMLFormControlsCollection -> name -> m (Maybe Node)
namedItem self name
  = liftIO
      ((js_namedItem (unHTMLFormControlsCollection self)
          (toJSString name))
         >>= fromJSRef)
#else
module GHCJS.DOM.HTMLFormControlsCollection (
  ) where
#endif
