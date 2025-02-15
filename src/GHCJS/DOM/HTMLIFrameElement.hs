{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLIFrameElement
       (js_getSVGDocument, getSVGDocument, js_setAlign, setAlign,
        js_getAlign, getAlign, js_setFrameBorder, setFrameBorder,
        js_getFrameBorder, getFrameBorder, js_setHeight, setHeight,
        js_getHeight, getHeight, js_setLongDesc, setLongDesc,
        js_getLongDesc, getLongDesc, js_setMarginHeight, setMarginHeight,
        js_getMarginHeight, getMarginHeight, js_setMarginWidth,
        setMarginWidth, js_getMarginWidth, getMarginWidth, js_setName,
        setName, js_getName, getName, js_setSandbox, setSandbox,
        js_getSandbox, getSandbox, js_setScrolling, setScrolling,
        js_getScrolling, getScrolling, js_setSrc, setSrc, js_getSrc,
        getSrc, js_setSrcdoc, setSrcdoc, js_getSrcdoc, getSrcdoc,
        js_setWidth, setWidth, js_getWidth, getWidth,
        js_getContentDocument, getContentDocument, js_getContentWindow,
        getContentWindow, HTMLIFrameElement, castToHTMLIFrameElement,
        gTypeHTMLIFrameElement)
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

 
foreign import javascript unsafe "$1[\"getSVGDocument\"]()"
        js_getSVGDocument ::
        JSRef HTMLIFrameElement -> IO (JSRef SVGDocument)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.getSVGDocument Mozilla HTMLIFrameElement.getSVGDocument documentation> 
getSVGDocument ::
               (MonadIO m) => HTMLIFrameElement -> m (Maybe SVGDocument)
getSVGDocument self
  = liftIO
      ((js_getSVGDocument (unHTMLIFrameElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.align Mozilla HTMLIFrameElement.align documentation> 
setAlign ::
         (MonadIO m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setAlign self val
  = liftIO (js_setAlign (unHTMLIFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.align Mozilla HTMLIFrameElement.align documentation> 
getAlign ::
         (MonadIO m, FromJSString result) => HTMLIFrameElement -> m result
getAlign self
  = liftIO
      (fromJSString <$> (js_getAlign (unHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"frameBorder\"] = $2;"
        js_setFrameBorder :: JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.frameBorder Mozilla HTMLIFrameElement.frameBorder documentation> 
setFrameBorder ::
               (MonadIO m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setFrameBorder self val
  = liftIO
      (js_setFrameBorder (unHTMLIFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"frameBorder\"]"
        js_getFrameBorder :: JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.frameBorder Mozilla HTMLIFrameElement.frameBorder documentation> 
getFrameBorder ::
               (MonadIO m, FromJSString result) => HTMLIFrameElement -> m result
getFrameBorder self
  = liftIO
      (fromJSString <$> (js_getFrameBorder (unHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"height\"] = $2;"
        js_setHeight :: JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.height Mozilla HTMLIFrameElement.height documentation> 
setHeight ::
          (MonadIO m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setHeight self val
  = liftIO (js_setHeight (unHTMLIFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.height Mozilla HTMLIFrameElement.height documentation> 
getHeight ::
          (MonadIO m, FromJSString result) => HTMLIFrameElement -> m result
getHeight self
  = liftIO
      (fromJSString <$> (js_getHeight (unHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"longDesc\"] = $2;"
        js_setLongDesc :: JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.longDesc Mozilla HTMLIFrameElement.longDesc documentation> 
setLongDesc ::
            (MonadIO m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setLongDesc self val
  = liftIO
      (js_setLongDesc (unHTMLIFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"longDesc\"]" js_getLongDesc
        :: JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.longDesc Mozilla HTMLIFrameElement.longDesc documentation> 
getLongDesc ::
            (MonadIO m, FromJSString result) => HTMLIFrameElement -> m result
getLongDesc self
  = liftIO
      (fromJSString <$> (js_getLongDesc (unHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"marginHeight\"] = $2;"
        js_setMarginHeight :: JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.marginHeight Mozilla HTMLIFrameElement.marginHeight documentation> 
setMarginHeight ::
                (MonadIO m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setMarginHeight self val
  = liftIO
      (js_setMarginHeight (unHTMLIFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"marginHeight\"]"
        js_getMarginHeight :: JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.marginHeight Mozilla HTMLIFrameElement.marginHeight documentation> 
getMarginHeight ::
                (MonadIO m, FromJSString result) => HTMLIFrameElement -> m result
getMarginHeight self
  = liftIO
      (fromJSString <$> (js_getMarginHeight (unHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"marginWidth\"] = $2;"
        js_setMarginWidth :: JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.marginWidth Mozilla HTMLIFrameElement.marginWidth documentation> 
setMarginWidth ::
               (MonadIO m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setMarginWidth self val
  = liftIO
      (js_setMarginWidth (unHTMLIFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"marginWidth\"]"
        js_getMarginWidth :: JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.marginWidth Mozilla HTMLIFrameElement.marginWidth documentation> 
getMarginWidth ::
               (MonadIO m, FromJSString result) => HTMLIFrameElement -> m result
getMarginWidth self
  = liftIO
      (fromJSString <$> (js_getMarginWidth (unHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.name Mozilla HTMLIFrameElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setName self val
  = liftIO (js_setName (unHTMLIFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.name Mozilla HTMLIFrameElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLIFrameElement -> m result
getName self
  = liftIO (fromJSString <$> (js_getName (unHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"sandbox\"] = $2;"
        js_setSandbox :: JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.sandbox Mozilla HTMLIFrameElement.sandbox documentation> 
setSandbox ::
           (MonadIO m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setSandbox self val
  = liftIO
      (js_setSandbox (unHTMLIFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"sandbox\"]" js_getSandbox ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.sandbox Mozilla HTMLIFrameElement.sandbox documentation> 
getSandbox ::
           (MonadIO m, FromJSString result) => HTMLIFrameElement -> m result
getSandbox self
  = liftIO
      (fromJSString <$> (js_getSandbox (unHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"scrolling\"] = $2;"
        js_setScrolling :: JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.scrolling Mozilla HTMLIFrameElement.scrolling documentation> 
setScrolling ::
             (MonadIO m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setScrolling self val
  = liftIO
      (js_setScrolling (unHTMLIFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"scrolling\"]"
        js_getScrolling :: JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.scrolling Mozilla HTMLIFrameElement.scrolling documentation> 
getScrolling ::
             (MonadIO m, FromJSString result) => HTMLIFrameElement -> m result
getScrolling self
  = liftIO
      (fromJSString <$> (js_getScrolling (unHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"src\"] = $2;" js_setSrc ::
        JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.src Mozilla HTMLIFrameElement.src documentation> 
setSrc ::
       (MonadIO m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setSrc self val
  = liftIO (js_setSrc (unHTMLIFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"src\"]" js_getSrc ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.src Mozilla HTMLIFrameElement.src documentation> 
getSrc ::
       (MonadIO m, FromJSString result) => HTMLIFrameElement -> m result
getSrc self
  = liftIO (fromJSString <$> (js_getSrc (unHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"srcdoc\"] = $2;"
        js_setSrcdoc :: JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.srcdoc Mozilla HTMLIFrameElement.srcdoc documentation> 
setSrcdoc ::
          (MonadIO m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setSrcdoc self val
  = liftIO (js_setSrcdoc (unHTMLIFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"srcdoc\"]" js_getSrcdoc ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.srcdoc Mozilla HTMLIFrameElement.srcdoc documentation> 
getSrcdoc ::
          (MonadIO m, FromJSString result) => HTMLIFrameElement -> m result
getSrcdoc self
  = liftIO
      (fromJSString <$> (js_getSrcdoc (unHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"width\"] = $2;" js_setWidth
        :: JSRef HTMLIFrameElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.width Mozilla HTMLIFrameElement.width documentation> 
setWidth ::
         (MonadIO m, ToJSString val) => HTMLIFrameElement -> val -> m ()
setWidth self val
  = liftIO (js_setWidth (unHTMLIFrameElement self) (toJSString val))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        JSRef HTMLIFrameElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.width Mozilla HTMLIFrameElement.width documentation> 
getWidth ::
         (MonadIO m, FromJSString result) => HTMLIFrameElement -> m result
getWidth self
  = liftIO
      (fromJSString <$> (js_getWidth (unHTMLIFrameElement self)))
 
foreign import javascript unsafe "$1[\"contentDocument\"]"
        js_getContentDocument ::
        JSRef HTMLIFrameElement -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.contentDocument Mozilla HTMLIFrameElement.contentDocument documentation> 
getContentDocument ::
                   (MonadIO m) => HTMLIFrameElement -> m (Maybe Document)
getContentDocument self
  = liftIO
      ((js_getContentDocument (unHTMLIFrameElement self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"contentWindow\"]"
        js_getContentWindow ::
        JSRef HTMLIFrameElement -> IO (JSRef DOMWindow)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLIFrameElement.contentWindow Mozilla HTMLIFrameElement.contentWindow documentation> 
getContentWindow ::
                 (MonadIO m) => HTMLIFrameElement -> m (Maybe DOMWindow)
getContentWindow self
  = liftIO
      ((js_getContentWindow (unHTMLIFrameElement self)) >>= fromJSRef)
#else
module GHCJS.DOM.HTMLIFrameElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLIFrameElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLIFrameElement
#endif
