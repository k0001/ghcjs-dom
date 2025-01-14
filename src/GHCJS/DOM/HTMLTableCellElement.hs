{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLTableCellElement
       (js_getCellIndex, getCellIndex, js_setAbbr, setAbbr, js_getAbbr,
        getAbbr, js_setAlign, setAlign, js_getAlign, getAlign, js_setAxis,
        setAxis, js_getAxis, getAxis, js_setBgColor, setBgColor,
        js_getBgColor, getBgColor, js_setCh, setCh, js_getCh, getCh,
        js_setChOff, setChOff, js_getChOff, getChOff, js_setColSpan,
        setColSpan, js_getColSpan, getColSpan, js_setHeaders, setHeaders,
        js_getHeaders, getHeaders, js_setHeight, setHeight, js_getHeight,
        getHeight, js_setNoWrap, setNoWrap, js_getNoWrap, getNoWrap,
        js_setRowSpan, setRowSpan, js_getRowSpan, getRowSpan, js_setScope,
        setScope, js_getScope, getScope, js_setVAlign, setVAlign,
        js_getVAlign, getVAlign, js_setWidth, setWidth, js_getWidth,
        getWidth, HTMLTableCellElement, castToHTMLTableCellElement,
        gTypeHTMLTableCellElement)
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

 
foreign import javascript unsafe "$1[\"cellIndex\"]"
        js_getCellIndex :: JSRef HTMLTableCellElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.cellIndex Mozilla HTMLTableCellElement.cellIndex documentation> 
getCellIndex :: (MonadIO m) => HTMLTableCellElement -> m Int
getCellIndex self
  = liftIO (js_getCellIndex (unHTMLTableCellElement self))
 
foreign import javascript unsafe "$1[\"abbr\"] = $2;" js_setAbbr ::
        JSRef HTMLTableCellElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.abbr Mozilla HTMLTableCellElement.abbr documentation> 
setAbbr ::
        (MonadIO m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setAbbr self val
  = liftIO
      (js_setAbbr (unHTMLTableCellElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"abbr\"]" js_getAbbr ::
        JSRef HTMLTableCellElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.abbr Mozilla HTMLTableCellElement.abbr documentation> 
getAbbr ::
        (MonadIO m, FromJSString result) =>
          HTMLTableCellElement -> m result
getAbbr self
  = liftIO
      (fromJSString <$> (js_getAbbr (unHTMLTableCellElement self)))
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: JSRef HTMLTableCellElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.align Mozilla HTMLTableCellElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setAlign self val
  = liftIO
      (js_setAlign (unHTMLTableCellElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        JSRef HTMLTableCellElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.align Mozilla HTMLTableCellElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) =>
           HTMLTableCellElement -> m result
getAlign self
  = liftIO
      (fromJSString <$> (js_getAlign (unHTMLTableCellElement self)))
 
foreign import javascript unsafe "$1[\"axis\"] = $2;" js_setAxis ::
        JSRef HTMLTableCellElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.axis Mozilla HTMLTableCellElement.axis documentation> 
setAxis ::
        (MonadIO m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setAxis self val
  = liftIO
      (js_setAxis (unHTMLTableCellElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"axis\"]" js_getAxis ::
        JSRef HTMLTableCellElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.axis Mozilla HTMLTableCellElement.axis documentation> 
getAxis ::
        (MonadIO m, FromJSString result) =>
          HTMLTableCellElement -> m result
getAxis self
  = liftIO
      (fromJSString <$> (js_getAxis (unHTMLTableCellElement self)))
 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        js_setBgColor :: JSRef HTMLTableCellElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.bgColor Mozilla HTMLTableCellElement.bgColor documentation> 
setBgColor ::
           (MonadIO m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setBgColor self val
  = liftIO
      (js_setBgColor (unHTMLTableCellElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"bgColor\"]" js_getBgColor ::
        JSRef HTMLTableCellElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.bgColor Mozilla HTMLTableCellElement.bgColor documentation> 
getBgColor ::
           (MonadIO m, FromJSString result) =>
             HTMLTableCellElement -> m result
getBgColor self
  = liftIO
      (fromJSString <$> (js_getBgColor (unHTMLTableCellElement self)))
 
foreign import javascript unsafe "$1[\"ch\"] = $2;" js_setCh ::
        JSRef HTMLTableCellElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.ch Mozilla HTMLTableCellElement.ch documentation> 
setCh ::
      (MonadIO m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setCh self val
  = liftIO (js_setCh (unHTMLTableCellElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"ch\"]" js_getCh ::
        JSRef HTMLTableCellElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.ch Mozilla HTMLTableCellElement.ch documentation> 
getCh ::
      (MonadIO m, FromJSString result) =>
        HTMLTableCellElement -> m result
getCh self
  = liftIO
      (fromJSString <$> (js_getCh (unHTMLTableCellElement self)))
 
foreign import javascript unsafe "$1[\"chOff\"] = $2;" js_setChOff
        :: JSRef HTMLTableCellElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.chOff Mozilla HTMLTableCellElement.chOff documentation> 
setChOff ::
         (MonadIO m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setChOff self val
  = liftIO
      (js_setChOff (unHTMLTableCellElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"chOff\"]" js_getChOff ::
        JSRef HTMLTableCellElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.chOff Mozilla HTMLTableCellElement.chOff documentation> 
getChOff ::
         (MonadIO m, FromJSString result) =>
           HTMLTableCellElement -> m result
getChOff self
  = liftIO
      (fromJSString <$> (js_getChOff (unHTMLTableCellElement self)))
 
foreign import javascript unsafe "$1[\"colSpan\"] = $2;"
        js_setColSpan :: JSRef HTMLTableCellElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.colSpan Mozilla HTMLTableCellElement.colSpan documentation> 
setColSpan :: (MonadIO m) => HTMLTableCellElement -> Int -> m ()
setColSpan self val
  = liftIO (js_setColSpan (unHTMLTableCellElement self) val)
 
foreign import javascript unsafe "$1[\"colSpan\"]" js_getColSpan ::
        JSRef HTMLTableCellElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.colSpan Mozilla HTMLTableCellElement.colSpan documentation> 
getColSpan :: (MonadIO m) => HTMLTableCellElement -> m Int
getColSpan self
  = liftIO (js_getColSpan (unHTMLTableCellElement self))
 
foreign import javascript unsafe "$1[\"headers\"] = $2;"
        js_setHeaders :: JSRef HTMLTableCellElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.headers Mozilla HTMLTableCellElement.headers documentation> 
setHeaders ::
           (MonadIO m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setHeaders self val
  = liftIO
      (js_setHeaders (unHTMLTableCellElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"headers\"]" js_getHeaders ::
        JSRef HTMLTableCellElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.headers Mozilla HTMLTableCellElement.headers documentation> 
getHeaders ::
           (MonadIO m, FromJSString result) =>
             HTMLTableCellElement -> m result
getHeaders self
  = liftIO
      (fromJSString <$> (js_getHeaders (unHTMLTableCellElement self)))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: JSRef HTMLTableCellElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.height Mozilla HTMLTableCellElement.height documentation> 
setHeight ::
          (MonadIO m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setHeight self val
  = liftIO
      (js_setHeight (unHTMLTableCellElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef HTMLTableCellElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.height Mozilla HTMLTableCellElement.height documentation> 
getHeight ::
          (MonadIO m, FromJSString result) =>
            HTMLTableCellElement -> m result
getHeight self
  = liftIO
      (fromJSString <$> (js_getHeight (unHTMLTableCellElement self)))
 
foreign import javascript unsafe "$1[\"noWrap\"] = $2;"
        js_setNoWrap :: JSRef HTMLTableCellElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.noWrap Mozilla HTMLTableCellElement.noWrap documentation> 
setNoWrap :: (MonadIO m) => HTMLTableCellElement -> Bool -> m ()
setNoWrap self val
  = liftIO (js_setNoWrap (unHTMLTableCellElement self) val)
 
foreign import javascript unsafe "($1[\"noWrap\"] ? 1 : 0)"
        js_getNoWrap :: JSRef HTMLTableCellElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.noWrap Mozilla HTMLTableCellElement.noWrap documentation> 
getNoWrap :: (MonadIO m) => HTMLTableCellElement -> m Bool
getNoWrap self
  = liftIO (js_getNoWrap (unHTMLTableCellElement self))
 
foreign import javascript unsafe "$1[\"rowSpan\"] = $2;"
        js_setRowSpan :: JSRef HTMLTableCellElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.rowSpan Mozilla HTMLTableCellElement.rowSpan documentation> 
setRowSpan :: (MonadIO m) => HTMLTableCellElement -> Int -> m ()
setRowSpan self val
  = liftIO (js_setRowSpan (unHTMLTableCellElement self) val)
 
foreign import javascript unsafe "$1[\"rowSpan\"]" js_getRowSpan ::
        JSRef HTMLTableCellElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.rowSpan Mozilla HTMLTableCellElement.rowSpan documentation> 
getRowSpan :: (MonadIO m) => HTMLTableCellElement -> m Int
getRowSpan self
  = liftIO (js_getRowSpan (unHTMLTableCellElement self))
 
foreign import javascript unsafe "$1[\"scope\"] = $2;" js_setScope
        :: JSRef HTMLTableCellElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.scope Mozilla HTMLTableCellElement.scope documentation> 
setScope ::
         (MonadIO m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setScope self val
  = liftIO
      (js_setScope (unHTMLTableCellElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"scope\"]" js_getScope ::
        JSRef HTMLTableCellElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.scope Mozilla HTMLTableCellElement.scope documentation> 
getScope ::
         (MonadIO m, FromJSString result) =>
           HTMLTableCellElement -> m result
getScope self
  = liftIO
      (fromJSString <$> (js_getScope (unHTMLTableCellElement self)))
 
foreign import javascript unsafe "$1[\"vAlign\"] = $2;"
        js_setVAlign :: JSRef HTMLTableCellElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.vAlign Mozilla HTMLTableCellElement.vAlign documentation> 
setVAlign ::
          (MonadIO m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setVAlign self val
  = liftIO
      (js_setVAlign (unHTMLTableCellElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"vAlign\"]" js_getVAlign ::
        JSRef HTMLTableCellElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.vAlign Mozilla HTMLTableCellElement.vAlign documentation> 
getVAlign ::
          (MonadIO m, FromJSString result) =>
            HTMLTableCellElement -> m result
getVAlign self
  = liftIO
      (fromJSString <$> (js_getVAlign (unHTMLTableCellElement self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: JSRef HTMLTableCellElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.width Mozilla HTMLTableCellElement.width documentation> 
setWidth ::
         (MonadIO m, ToJSString val) => HTMLTableCellElement -> val -> m ()
setWidth self val
  = liftIO
      (js_setWidth (unHTMLTableCellElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef HTMLTableCellElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableCellElement.width Mozilla HTMLTableCellElement.width documentation> 
getWidth ::
         (MonadIO m, FromJSString result) =>
           HTMLTableCellElement -> m result
getWidth self
  = liftIO
      (fromJSString <$> (js_getWidth (unHTMLTableCellElement self)))
#else
module GHCJS.DOM.HTMLTableCellElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLTableCellElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLTableCellElement
#endif
