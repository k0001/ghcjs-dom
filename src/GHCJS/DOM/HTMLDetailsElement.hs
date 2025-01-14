{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLDetailsElement
       (js_setOpen, setOpen, js_getOpen, getOpen, HTMLDetailsElement,
        castToHTMLDetailsElement, gTypeHTMLDetailsElement)
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

 
foreign import javascript unsafe "$1[\"open\"] = $2;" js_setOpen ::
        JSRef HTMLDetailsElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement.open Mozilla HTMLDetailsElement.open documentation> 
setOpen :: (MonadIO m) => HTMLDetailsElement -> Bool -> m ()
setOpen self val
  = liftIO (js_setOpen (unHTMLDetailsElement self) val)
 
foreign import javascript unsafe "($1[\"open\"] ? 1 : 0)"
        js_getOpen :: JSRef HTMLDetailsElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement.open Mozilla HTMLDetailsElement.open documentation> 
getOpen :: (MonadIO m) => HTMLDetailsElement -> m Bool
getOpen self = liftIO (js_getOpen (unHTMLDetailsElement self))
#else
module GHCJS.DOM.HTMLDetailsElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLDetailsElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLDetailsElement
#endif
