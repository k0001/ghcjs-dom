{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.HTMLElement
       (js_insertAdjacentElement, insertAdjacentElement,
        js_insertAdjacentHTML, insertAdjacentHTML, js_insertAdjacentText,
        insertAdjacentText, js_click, click, js_setTitle, setTitle,
        js_getTitle, getTitle, js_setLang, setLang, js_getLang, getLang,
        js_setTranslate, setTranslate, js_getTranslate, getTranslate,
        js_setDir, setDir, js_getDir, getDir, js_setTabIndex, setTabIndex,
        js_getTabIndex, getTabIndex, js_setDraggable, setDraggable,
        js_getDraggable, getDraggable, js_setWebkitdropzone,
        setWebkitdropzone, js_getWebkitdropzone, getWebkitdropzone,
        js_setHidden, setHidden, js_getHidden, getHidden, js_setAccessKey,
        setAccessKey, js_getAccessKey, getAccessKey, js_setInnerText,
        setInnerText, js_getInnerText, getInnerText, js_setOuterText,
        setOuterText, js_getOuterText, getOuterText, js_getChildren,
        getChildren, js_setContentEditable, setContentEditable,
        js_getContentEditable, getContentEditable, js_getIsContentEditable,
        getIsContentEditable, js_setSpellcheck, setSpellcheck,
        js_getSpellcheck, getSpellcheck, HTMLElement, castToHTMLElement,
        gTypeHTMLElement, IsHTMLElement, toHTMLElement)
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

 
foreign import javascript unsafe
        "$1[\"insertAdjacentElement\"]($2,\n$3)" js_insertAdjacentElement
        ::
        JSRef HTMLElement ->
          JSString -> JSRef Element -> IO (JSRef Element)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.insertAdjacentElement Mozilla HTMLElement.insertAdjacentElement documentation> 
insertAdjacentElement ::
                      (MonadIO m, IsHTMLElement self, ToJSString where',
                       IsElement element) =>
                        self -> where' -> Maybe element -> m (Maybe Element)
insertAdjacentElement self where' element
  = liftIO
      ((js_insertAdjacentElement (unHTMLElement (toHTMLElement self))
          (toJSString where')
          (maybe jsNull (unElement . toElement) element))
         >>= fromJSRef)
 
foreign import javascript unsafe
        "$1[\"insertAdjacentHTML\"]($2, $3)" js_insertAdjacentHTML ::
        JSRef HTMLElement -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.insertAdjacentHTML Mozilla HTMLElement.insertAdjacentHTML documentation> 
insertAdjacentHTML ::
                   (MonadIO m, IsHTMLElement self, ToJSString where',
                    ToJSString html) =>
                     self -> where' -> html -> m ()
insertAdjacentHTML self where' html
  = liftIO
      (js_insertAdjacentHTML (unHTMLElement (toHTMLElement self))
         (toJSString where')
         (toJSString html))
 
foreign import javascript unsafe
        "$1[\"insertAdjacentText\"]($2, $3)" js_insertAdjacentText ::
        JSRef HTMLElement -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.insertAdjacentText Mozilla HTMLElement.insertAdjacentText documentation> 
insertAdjacentText ::
                   (MonadIO m, IsHTMLElement self, ToJSString where',
                    ToJSString text) =>
                     self -> where' -> text -> m ()
insertAdjacentText self where' text
  = liftIO
      (js_insertAdjacentText (unHTMLElement (toHTMLElement self))
         (toJSString where')
         (toJSString text))
 
foreign import javascript unsafe "$1[\"click\"]()" js_click ::
        JSRef HTMLElement -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.click Mozilla HTMLElement.click documentation> 
click :: (MonadIO m, IsHTMLElement self) => self -> m ()
click self = liftIO (js_click (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"title\"] = $2;" js_setTitle
        :: JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.title Mozilla HTMLElement.title documentation> 
setTitle ::
         (MonadIO m, IsHTMLElement self, ToJSString val) =>
           self -> val -> m ()
setTitle self val
  = liftIO
      (js_setTitle (unHTMLElement (toHTMLElement self)) (toJSString val))
 
foreign import javascript unsafe "$1[\"title\"]" js_getTitle ::
        JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.title Mozilla HTMLElement.title documentation> 
getTitle ::
         (MonadIO m, IsHTMLElement self, FromJSString result) =>
           self -> m result
getTitle self
  = liftIO
      (fromJSString <$>
         (js_getTitle (unHTMLElement (toHTMLElement self))))
 
foreign import javascript unsafe "$1[\"lang\"] = $2;" js_setLang ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.lang Mozilla HTMLElement.lang documentation> 
setLang ::
        (MonadIO m, IsHTMLElement self, ToJSString val) =>
          self -> val -> m ()
setLang self val
  = liftIO
      (js_setLang (unHTMLElement (toHTMLElement self)) (toJSString val))
 
foreign import javascript unsafe "$1[\"lang\"]" js_getLang ::
        JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.lang Mozilla HTMLElement.lang documentation> 
getLang ::
        (MonadIO m, IsHTMLElement self, FromJSString result) =>
          self -> m result
getLang self
  = liftIO
      (fromJSString <$>
         (js_getLang (unHTMLElement (toHTMLElement self))))
 
foreign import javascript unsafe "$1[\"translate\"] = $2;"
        js_setTranslate :: JSRef HTMLElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.translate Mozilla HTMLElement.translate documentation> 
setTranslate ::
             (MonadIO m, IsHTMLElement self) => self -> Bool -> m ()
setTranslate self val
  = liftIO (js_setTranslate (unHTMLElement (toHTMLElement self)) val)
 
foreign import javascript unsafe "($1[\"translate\"] ? 1 : 0)"
        js_getTranslate :: JSRef HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.translate Mozilla HTMLElement.translate documentation> 
getTranslate :: (MonadIO m, IsHTMLElement self) => self -> m Bool
getTranslate self
  = liftIO (js_getTranslate (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"dir\"] = $2;" js_setDir ::
        JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.dir Mozilla HTMLElement.dir documentation> 
setDir ::
       (MonadIO m, IsHTMLElement self, ToJSString val) =>
         self -> val -> m ()
setDir self val
  = liftIO
      (js_setDir (unHTMLElement (toHTMLElement self)) (toJSString val))
 
foreign import javascript unsafe "$1[\"dir\"]" js_getDir ::
        JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.dir Mozilla HTMLElement.dir documentation> 
getDir ::
       (MonadIO m, IsHTMLElement self, FromJSString result) =>
         self -> m result
getDir self
  = liftIO
      (fromJSString <$> (js_getDir (unHTMLElement (toHTMLElement self))))
 
foreign import javascript unsafe "$1[\"tabIndex\"] = $2;"
        js_setTabIndex :: JSRef HTMLElement -> Int -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.tabIndex Mozilla HTMLElement.tabIndex documentation> 
setTabIndex ::
            (MonadIO m, IsHTMLElement self) => self -> Int -> m ()
setTabIndex self val
  = liftIO (js_setTabIndex (unHTMLElement (toHTMLElement self)) val)
 
foreign import javascript unsafe "$1[\"tabIndex\"]" js_getTabIndex
        :: JSRef HTMLElement -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.tabIndex Mozilla HTMLElement.tabIndex documentation> 
getTabIndex :: (MonadIO m, IsHTMLElement self) => self -> m Int
getTabIndex self
  = liftIO (js_getTabIndex (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"draggable\"] = $2;"
        js_setDraggable :: JSRef HTMLElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.draggable Mozilla HTMLElement.draggable documentation> 
setDraggable ::
             (MonadIO m, IsHTMLElement self) => self -> Bool -> m ()
setDraggable self val
  = liftIO (js_setDraggable (unHTMLElement (toHTMLElement self)) val)
 
foreign import javascript unsafe "($1[\"draggable\"] ? 1 : 0)"
        js_getDraggable :: JSRef HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.draggable Mozilla HTMLElement.draggable documentation> 
getDraggable :: (MonadIO m, IsHTMLElement self) => self -> m Bool
getDraggable self
  = liftIO (js_getDraggable (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"webkitdropzone\"] = $2;"
        js_setWebkitdropzone :: JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.webkitdropzone Mozilla HTMLElement.webkitdropzone documentation> 
setWebkitdropzone ::
                  (MonadIO m, IsHTMLElement self, ToJSString val) =>
                    self -> val -> m ()
setWebkitdropzone self val
  = liftIO
      (js_setWebkitdropzone (unHTMLElement (toHTMLElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"webkitdropzone\"]"
        js_getWebkitdropzone :: JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.webkitdropzone Mozilla HTMLElement.webkitdropzone documentation> 
getWebkitdropzone ::
                  (MonadIO m, IsHTMLElement self, FromJSString result) =>
                    self -> m result
getWebkitdropzone self
  = liftIO
      (fromJSString <$>
         (js_getWebkitdropzone (unHTMLElement (toHTMLElement self))))
 
foreign import javascript unsafe "$1[\"hidden\"] = $2;"
        js_setHidden :: JSRef HTMLElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.hidden Mozilla HTMLElement.hidden documentation> 
setHidden ::
          (MonadIO m, IsHTMLElement self) => self -> Bool -> m ()
setHidden self val
  = liftIO (js_setHidden (unHTMLElement (toHTMLElement self)) val)
 
foreign import javascript unsafe "($1[\"hidden\"] ? 1 : 0)"
        js_getHidden :: JSRef HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.hidden Mozilla HTMLElement.hidden documentation> 
getHidden :: (MonadIO m, IsHTMLElement self) => self -> m Bool
getHidden self
  = liftIO (js_getHidden (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"accessKey\"] = $2;"
        js_setAccessKey :: JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.accessKey Mozilla HTMLElement.accessKey documentation> 
setAccessKey ::
             (MonadIO m, IsHTMLElement self, ToJSString val) =>
               self -> val -> m ()
setAccessKey self val
  = liftIO
      (js_setAccessKey (unHTMLElement (toHTMLElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"accessKey\"]"
        js_getAccessKey :: JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.accessKey Mozilla HTMLElement.accessKey documentation> 
getAccessKey ::
             (MonadIO m, IsHTMLElement self, FromJSString result) =>
               self -> m result
getAccessKey self
  = liftIO
      (fromJSString <$>
         (js_getAccessKey (unHTMLElement (toHTMLElement self))))
 
foreign import javascript unsafe "$1[\"innerText\"] = $2;"
        js_setInnerText :: JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerText Mozilla HTMLElement.innerText documentation> 
setInnerText ::
             (MonadIO m, IsHTMLElement self, ToJSString val) =>
               self -> val -> m ()
setInnerText self val
  = liftIO
      (js_setInnerText (unHTMLElement (toHTMLElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"innerText\"]"
        js_getInnerText :: JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.innerText Mozilla HTMLElement.innerText documentation> 
getInnerText ::
             (MonadIO m, IsHTMLElement self, FromJSString result) =>
               self -> m result
getInnerText self
  = liftIO
      (fromJSString <$>
         (js_getInnerText (unHTMLElement (toHTMLElement self))))
 
foreign import javascript unsafe "$1[\"outerText\"] = $2;"
        js_setOuterText :: JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerText Mozilla HTMLElement.outerText documentation> 
setOuterText ::
             (MonadIO m, IsHTMLElement self, ToJSString val) =>
               self -> val -> m ()
setOuterText self val
  = liftIO
      (js_setOuterText (unHTMLElement (toHTMLElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"outerText\"]"
        js_getOuterText :: JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.outerText Mozilla HTMLElement.outerText documentation> 
getOuterText ::
             (MonadIO m, IsHTMLElement self, FromJSString result) =>
               self -> m result
getOuterText self
  = liftIO
      (fromJSString <$>
         (js_getOuterText (unHTMLElement (toHTMLElement self))))
 
foreign import javascript unsafe "$1[\"children\"]" js_getChildren
        :: JSRef HTMLElement -> IO (JSRef HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.children Mozilla HTMLElement.children documentation> 
getChildren ::
            (MonadIO m, IsHTMLElement self) => self -> m (Maybe HTMLCollection)
getChildren self
  = liftIO
      ((js_getChildren (unHTMLElement (toHTMLElement self))) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"contentEditable\"] = $2;"
        js_setContentEditable :: JSRef HTMLElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.contentEditable Mozilla HTMLElement.contentEditable documentation> 
setContentEditable ::
                   (MonadIO m, IsHTMLElement self, ToJSString val) =>
                     self -> val -> m ()
setContentEditable self val
  = liftIO
      (js_setContentEditable (unHTMLElement (toHTMLElement self))
         (toJSString val))
 
foreign import javascript unsafe "$1[\"contentEditable\"]"
        js_getContentEditable :: JSRef HTMLElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.contentEditable Mozilla HTMLElement.contentEditable documentation> 
getContentEditable ::
                   (MonadIO m, IsHTMLElement self, FromJSString result) =>
                     self -> m result
getContentEditable self
  = liftIO
      (fromJSString <$>
         (js_getContentEditable (unHTMLElement (toHTMLElement self))))
 
foreign import javascript unsafe
        "($1[\"isContentEditable\"] ? 1 : 0)" js_getIsContentEditable ::
        JSRef HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.isContentEditable Mozilla HTMLElement.isContentEditable documentation> 
getIsContentEditable ::
                     (MonadIO m, IsHTMLElement self) => self -> m Bool
getIsContentEditable self
  = liftIO
      (js_getIsContentEditable (unHTMLElement (toHTMLElement self)))
 
foreign import javascript unsafe "$1[\"spellcheck\"] = $2;"
        js_setSpellcheck :: JSRef HTMLElement -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.spellcheck Mozilla HTMLElement.spellcheck documentation> 
setSpellcheck ::
              (MonadIO m, IsHTMLElement self) => self -> Bool -> m ()
setSpellcheck self val
  = liftIO
      (js_setSpellcheck (unHTMLElement (toHTMLElement self)) val)
 
foreign import javascript unsafe "($1[\"spellcheck\"] ? 1 : 0)"
        js_getSpellcheck :: JSRef HTMLElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement.spellcheck Mozilla HTMLElement.spellcheck documentation> 
getSpellcheck :: (MonadIO m, IsHTMLElement self) => self -> m Bool
getSpellcheck self
  = liftIO (js_getSpellcheck (unHTMLElement (toHTMLElement self)))
#else
module GHCJS.DOM.HTMLElement (
  module Graphics.UI.Gtk.WebKit.DOM.HTMLElement
  ) where
import Graphics.UI.Gtk.WebKit.DOM.HTMLElement
#endif
