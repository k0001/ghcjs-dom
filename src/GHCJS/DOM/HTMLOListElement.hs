{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLOListElement
       (js_setCompact, setCompact, js_getCompact, getCompact, js_setStart,
        setStart, js_getStart, getStart, js_setReversed, setReversed,
        js_getReversed, getReversed, HTMLOListElement,
        castToHTMLOListElement, gTypeHTMLOListElement)
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
        js_setCompact :: JSRef HTMLOListElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.compact Mozilla HTMLOListElement.compact documentation> 
setCompact :: (MonadIO m) => HTMLOListElement -> Bool -> m ()
setCompact self val
  = liftIO (js_setCompact (unHTMLOListElement self) val)
 
foreign import javascript unsafe "($1[\"compact\"] ? 1 : 0)"
        js_getCompact :: JSRef HTMLOListElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.compact Mozilla HTMLOListElement.compact documentation> 
getCompact :: (MonadIO m) => HTMLOListElement -> m Bool
getCompact self = liftIO (js_getCompact (unHTMLOListElement self))
 
foreign import javascript unsafe "$1[\"start\"] = $2;" js_setStart
        :: JSRef HTMLOListElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.start Mozilla HTMLOListElement.start documentation> 
setStart :: (MonadIO m) => HTMLOListElement -> Int -> m ()
setStart self val
  = liftIO (js_setStart (unHTMLOListElement self) val)
 
foreign import javascript unsafe "$1[\"start\"]" js_getStart ::
        JSRef HTMLOListElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.start Mozilla HTMLOListElement.start documentation> 
getStart :: (MonadIO m) => HTMLOListElement -> m Int
getStart self = liftIO (js_getStart (unHTMLOListElement self))
 
foreign import javascript unsafe "$1[\"reversed\"] = $2;"
        js_setReversed :: JSRef HTMLOListElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.reversed Mozilla HTMLOListElement.reversed documentation> 
setReversed :: (MonadIO m) => HTMLOListElement -> Bool -> m ()
setReversed self val
  = liftIO (js_setReversed (unHTMLOListElement self) val)
 
foreign import javascript unsafe "($1[\"reversed\"] ? 1 : 0)"
        js_getReversed :: JSRef HTMLOListElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOListElement.reversed Mozilla HTMLOListElement.reversed documentation> 
getReversed :: (MonadIO m) => HTMLOListElement -> m Bool
getReversed self
  = liftIO (js_getReversed (unHTMLOListElement self))
#else
module GHCJS.DOM.HTMLOListElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLOListElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLOListElement
#endif
