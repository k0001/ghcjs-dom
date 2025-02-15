{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLHtmlElement
       (js_setVersion, setVersion, js_getVersion, getVersion,
        js_setManifest, setManifest, js_getManifest, getManifest,
        HTMLHtmlElement, castToHTMLHtmlElement, gTypeHTMLHtmlElement)
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

 
foreign import javascript unsafe "$1[\"version\"] = $2;"
        js_setVersion :: JSRef HTMLHtmlElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement.version Mozilla HTMLHtmlElement.version documentation> 
setVersion ::
           (MonadIO m, ToJSString val) => HTMLHtmlElement -> val -> m ()
setVersion self val
  = liftIO (js_setVersion (unHTMLHtmlElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"version\"]" js_getVersion ::
        JSRef HTMLHtmlElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement.version Mozilla HTMLHtmlElement.version documentation> 
getVersion ::
           (MonadIO m, FromJSString result) => HTMLHtmlElement -> m result
getVersion self
  = liftIO
      (fromJSString <$> (js_getVersion (unHTMLHtmlElement self)))
 
foreign import javascript unsafe "$1[\"manifest\"] = $2;"
        js_setManifest :: JSRef HTMLHtmlElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement.manifest Mozilla HTMLHtmlElement.manifest documentation> 
setManifest ::
            (MonadIO m, ToJSString val) => HTMLHtmlElement -> val -> m ()
setManifest self val
  = liftIO (js_setManifest (unHTMLHtmlElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"manifest\"]" js_getManifest
        :: JSRef HTMLHtmlElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLHtmlElement.manifest Mozilla HTMLHtmlElement.manifest documentation> 
getManifest ::
            (MonadIO m, FromJSString result) => HTMLHtmlElement -> m result
getManifest self
  = liftIO
      (fromJSString <$> (js_getManifest (unHTMLHtmlElement self)))
#else
module GHCJS.DOM.HTMLHtmlElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLHtmlElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLHtmlElement
#endif
