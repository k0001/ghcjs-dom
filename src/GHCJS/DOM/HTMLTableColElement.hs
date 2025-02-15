{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLTableColElement
       (js_setAlign, setAlign, js_getAlign, getAlign, js_setCh, setCh,
        js_getCh, getCh, js_setChOff, setChOff, js_getChOff, getChOff,
        js_setSpan, setSpan, js_getSpan, getSpan, js_setVAlign, setVAlign,
        js_getVAlign, getVAlign, js_setWidth, setWidth, js_getWidth,
        getWidth, HTMLTableColElement, castToHTMLTableColElement,
        gTypeHTMLTableColElement)
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
        :: JSRef HTMLTableColElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.align Mozilla HTMLTableColElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLTableColElement -> val -> m ()
setAlign self val
  = liftIO
      (js_setAlign (unHTMLTableColElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        JSRef HTMLTableColElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.align Mozilla HTMLTableColElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) => HTMLTableColElement -> m result
getAlign self
  = liftIO
      (fromJSString <$> (js_getAlign (unHTMLTableColElement self)))
 
foreign import javascript unsafe "$1[\"ch\"] = $2;" js_setCh ::
        JSRef HTMLTableColElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.ch Mozilla HTMLTableColElement.ch documentation> 
setCh ::
      (MonadIO m, ToJSString val) => HTMLTableColElement -> val -> m ()
setCh self val
  = liftIO (js_setCh (unHTMLTableColElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"ch\"]" js_getCh ::
        JSRef HTMLTableColElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.ch Mozilla HTMLTableColElement.ch documentation> 
getCh ::
      (MonadIO m, FromJSString result) => HTMLTableColElement -> m result
getCh self
  = liftIO (fromJSString <$> (js_getCh (unHTMLTableColElement self)))
 
foreign import javascript unsafe "$1[\"chOff\"] = $2;" js_setChOff
        :: JSRef HTMLTableColElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.chOff Mozilla HTMLTableColElement.chOff documentation> 
setChOff ::
         (MonadIO m, ToJSString val) => HTMLTableColElement -> val -> m ()
setChOff self val
  = liftIO
      (js_setChOff (unHTMLTableColElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"chOff\"]" js_getChOff ::
        JSRef HTMLTableColElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.chOff Mozilla HTMLTableColElement.chOff documentation> 
getChOff ::
         (MonadIO m, FromJSString result) => HTMLTableColElement -> m result
getChOff self
  = liftIO
      (fromJSString <$> (js_getChOff (unHTMLTableColElement self)))
 
foreign import javascript unsafe "$1[\"span\"] = $2;" js_setSpan ::
        JSRef HTMLTableColElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.span Mozilla HTMLTableColElement.span documentation> 
setSpan :: (MonadIO m) => HTMLTableColElement -> Int -> m ()
setSpan self val
  = liftIO (js_setSpan (unHTMLTableColElement self) val)
 
foreign import javascript unsafe "$1[\"span\"]" js_getSpan ::
        JSRef HTMLTableColElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.span Mozilla HTMLTableColElement.span documentation> 
getSpan :: (MonadIO m) => HTMLTableColElement -> m Int
getSpan self = liftIO (js_getSpan (unHTMLTableColElement self))
 
foreign import javascript unsafe "$1[\"vAlign\"] = $2;"
        js_setVAlign :: JSRef HTMLTableColElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.vAlign Mozilla HTMLTableColElement.vAlign documentation> 
setVAlign ::
          (MonadIO m, ToJSString val) => HTMLTableColElement -> val -> m ()
setVAlign self val
  = liftIO
      (js_setVAlign (unHTMLTableColElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"vAlign\"]" js_getVAlign ::
        JSRef HTMLTableColElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.vAlign Mozilla HTMLTableColElement.vAlign documentation> 
getVAlign ::
          (MonadIO m, FromJSString result) => HTMLTableColElement -> m result
getVAlign self
  = liftIO
      (fromJSString <$> (js_getVAlign (unHTMLTableColElement self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: JSRef HTMLTableColElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.width Mozilla HTMLTableColElement.width documentation> 
setWidth ::
         (MonadIO m, ToJSString val) => HTMLTableColElement -> val -> m ()
setWidth self val
  = liftIO
      (js_setWidth (unHTMLTableColElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef HTMLTableColElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableColElement.width Mozilla HTMLTableColElement.width documentation> 
getWidth ::
         (MonadIO m, FromJSString result) => HTMLTableColElement -> m result
getWidth self
  = liftIO
      (fromJSString <$> (js_getWidth (unHTMLTableColElement self)))
#else
module GHCJS.DOM.HTMLTableColElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTableColElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLTableColElement
#endif
