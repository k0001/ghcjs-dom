{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLHeadElement
       (js_setProfile, setProfile, js_getProfile, getProfile,
        HTMLHeadElement, castToHTMLHeadElement, gTypeHTMLHeadElement)
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

 
foreign import javascript unsafe "$1[\"profile\"] = $2;"
        js_setProfile :: JSRef HTMLHeadElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadElement.profile Mozilla HTMLHeadElement.profile documentation> 
setProfile ::
           (MonadIO m, ToJSString val) => HTMLHeadElement -> val -> m ()
setProfile self val
  = liftIO (js_setProfile (unHTMLHeadElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"profile\"]" js_getProfile ::
        JSRef HTMLHeadElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHeadElement.profile Mozilla HTMLHeadElement.profile documentation> 
getProfile ::
           (MonadIO m, FromJSString result) => HTMLHeadElement -> m result
getProfile self
  = liftIO
      (fromJSString <$> (js_getProfile (unHTMLHeadElement self)))
#else
module GHCJS.DOM.HTMLHeadElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLHeadElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLHeadElement
#endif
