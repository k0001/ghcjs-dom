{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLMenuElement
       (js_setCompact, setCompact, js_getCompact, getCompact,
        HTMLMenuElement, castToHTMLMenuElement, gTypeHTMLMenuElement)
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

 
foreign import javascript unsafe "$1[\"compact\"] = $2;"
        js_setCompact :: JSRef HTMLMenuElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMenuElement.compact Mozilla HTMLMenuElement.compact documentation> 
setCompact :: (MonadIO m) => HTMLMenuElement -> Bool -> m ()
setCompact self val
  = liftIO (js_setCompact (unHTMLMenuElement self) val)
 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        js_getCompact :: JSRef HTMLMenuElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLMenuElement.compact Mozilla HTMLMenuElement.compact documentation> 
getCompact :: (MonadIO m) => HTMLMenuElement -> m Bool
getCompact self = liftIO (js_getCompact (unHTMLMenuElement self))
#else
module GHCJS.DOM.HTMLMenuElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLMenuElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLMenuElement
#endif
