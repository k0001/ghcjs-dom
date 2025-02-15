{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLTableCaptionElement
       (js_setAlign, setAlign, js_getAlign, getAlign,
        HTMLTableCaptionElement, castToHTMLTableCaptionElement,
        gTypeHTMLTableCaptionElement)
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

 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: JSRef HTMLTableCaptionElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCaptionElement.align Mozilla HTMLTableCaptionElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) =>
           HTMLTableCaptionElement -> val -> m ()
setAlign self val
  = liftIO
      (js_setAlign (unHTMLTableCaptionElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        JSRef HTMLTableCaptionElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCaptionElement.align Mozilla HTMLTableCaptionElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) =>
           HTMLTableCaptionElement -> m result
getAlign self
  = liftIO
      (fromJSString <$> (js_getAlign (unHTMLTableCaptionElement self)))
#else
module GHCJS.DOM.HTMLTableCaptionElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTableCaptionElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLTableCaptionElement
#endif
