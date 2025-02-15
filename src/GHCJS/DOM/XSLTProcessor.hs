{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.XSLTProcessor
       (js_newXSLTProcessor, newXSLTProcessor, js_importStylesheet,
        importStylesheet, js_transformToFragment, transformToFragment,
        js_transformToDocument, transformToDocument, js_setParameter,
        setParameter, js_getParameter, getParameter, js_removeParameter,
        removeParameter, js_clearParameters, clearParameters, js_reset,
        reset, XSLTProcessor, castToXSLTProcessor, gTypeXSLTProcessor)
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

 
foreign import javascript unsafe "new window[\"XSLTProcessor\"]()"
        js_newXSLTProcessor :: IO (JSRef XSLTProcessor)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor Mozilla XSLTProcessor documentation> 
newXSLTProcessor :: (MonadIO m) => m XSLTProcessor
newXSLTProcessor
  = liftIO (js_newXSLTProcessor >>= fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"importStylesheet\"]($2)"
        js_importStylesheet :: JSRef XSLTProcessor -> JSRef Node -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.importStylesheet Mozilla XSLTProcessor.importStylesheet documentation> 
importStylesheet ::
                 (MonadIO m, IsNode stylesheet) =>
                   XSLTProcessor -> Maybe stylesheet -> m ()
importStylesheet self stylesheet
  = liftIO
      (js_importStylesheet (unXSLTProcessor self)
         (maybe jsNull (unNode . toNode) stylesheet))
 
foreign import javascript unsafe
        "$1[\"transformToFragment\"]($2,\n$3)" js_transformToFragment ::
        JSRef XSLTProcessor ->
          JSRef Node -> JSRef Document -> IO (JSRef DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToFragment Mozilla XSLTProcessor.transformToFragment documentation> 
transformToFragment ::
                    (MonadIO m, IsNode source, IsDocument docVal) =>
                      XSLTProcessor ->
                        Maybe source -> Maybe docVal -> m (Maybe DocumentFragment)
transformToFragment self source docVal
  = liftIO
      ((js_transformToFragment (unXSLTProcessor self)
          (maybe jsNull (unNode . toNode) source)
          (maybe jsNull (unDocument . toDocument) docVal))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"transformToDocument\"]($2)"
        js_transformToDocument ::
        JSRef XSLTProcessor -> JSRef Node -> IO (JSRef Document)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.transformToDocument Mozilla XSLTProcessor.transformToDocument documentation> 
transformToDocument ::
                    (MonadIO m, IsNode source) =>
                      XSLTProcessor -> Maybe source -> m (Maybe Document)
transformToDocument self source
  = liftIO
      ((js_transformToDocument (unXSLTProcessor self)
          (maybe jsNull (unNode . toNode) source))
         >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"setParameter\"]($2, $3, $4)"
        js_setParameter ::
        JSRef XSLTProcessor -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.setParameter Mozilla XSLTProcessor.setParameter documentation> 
setParameter ::
             (MonadIO m, ToJSString namespaceURI, ToJSString localName,
              ToJSString value) =>
               XSLTProcessor -> namespaceURI -> localName -> value -> m ()
setParameter self namespaceURI localName value
  = liftIO
      (js_setParameter (unXSLTProcessor self) (toJSString namespaceURI)
         (toJSString localName)
         (toJSString value))
 
foreign import javascript unsafe "$1[\"getParameter\"]($2, $3)"
        js_getParameter ::
        JSRef XSLTProcessor -> JSString -> JSString -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.getParameter Mozilla XSLTProcessor.getParameter documentation> 
getParameter ::
             (MonadIO m, ToJSString namespaceURI, ToJSString localName,
              FromJSString result) =>
               XSLTProcessor -> namespaceURI -> localName -> m result
getParameter self namespaceURI localName
  = liftIO
      (fromJSString <$>
         (js_getParameter (unXSLTProcessor self) (toJSString namespaceURI)
            (toJSString localName)))
 
foreign import javascript unsafe "$1[\"removeParameter\"]($2, $3)"
        js_removeParameter ::
        JSRef XSLTProcessor -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.removeParameter Mozilla XSLTProcessor.removeParameter documentation> 
removeParameter ::
                (MonadIO m, ToJSString namespaceURI, ToJSString localName) =>
                  XSLTProcessor -> namespaceURI -> localName -> m ()
removeParameter self namespaceURI localName
  = liftIO
      (js_removeParameter (unXSLTProcessor self)
         (toJSString namespaceURI)
         (toJSString localName))
 
foreign import javascript unsafe "$1[\"clearParameters\"]()"
        js_clearParameters :: JSRef XSLTProcessor -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.clearParameters Mozilla XSLTProcessor.clearParameters documentation> 
clearParameters :: (MonadIO m) => XSLTProcessor -> m ()
clearParameters self
  = liftIO (js_clearParameters (unXSLTProcessor self))
 
foreign import javascript unsafe "$1[\"reset\"]()" js_reset ::
        JSRef XSLTProcessor -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/XSLTProcessor.reset Mozilla XSLTProcessor.reset documentation> 
reset :: (MonadIO m) => XSLTProcessor -> m ()
reset self = liftIO (js_reset (unXSLTProcessor self))
#else
module GHCJS.DOM.XSLTProcessor (
  ) where
#endif
