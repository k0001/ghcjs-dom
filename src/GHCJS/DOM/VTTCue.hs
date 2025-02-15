{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.VTTCue
       (js_newVTTCue, newVTTCue, js_getCueAsHTML, getCueAsHTML,
        js_setVertical, setVertical, js_getVertical, getVertical,
        js_setSnapToLines, setSnapToLines, js_getSnapToLines,
        getSnapToLines, js_setLine, setLine, js_getLine, getLine,
        js_setPosition, setPosition, js_getPosition, getPosition,
        js_setSize, setSize, js_getSize, getSize, js_setAlign, setAlign,
        js_getAlign, getAlign, js_setText, setText, js_getText, getText,
        js_setRegionId, setRegionId, js_getRegionId, getRegionId, VTTCue,
        castToVTTCue, gTypeVTTCue)
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
        "new window[\"VTTCue\"]($1, $2, $3)" js_newVTTCue ::
        Double -> Double -> JSString -> IO (JSRef VTTCue)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue Mozilla VTTCue documentation> 
newVTTCue ::
          (MonadIO m, ToJSString text) =>
            Double -> Double -> text -> m VTTCue
newVTTCue startTime endTime text
  = liftIO
      (js_newVTTCue startTime endTime (toJSString text) >>=
         fromJSRefUnchecked)
 
foreign import javascript unsafe "$1[\"getCueAsHTML\"]()"
        js_getCueAsHTML :: JSRef VTTCue -> IO (JSRef DocumentFragment)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.getCueAsHTML Mozilla VTTCue.getCueAsHTML documentation> 
getCueAsHTML :: (MonadIO m) => VTTCue -> m (Maybe DocumentFragment)
getCueAsHTML self
  = liftIO ((js_getCueAsHTML (unVTTCue self)) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"vertical\"] = $2;"
        js_setVertical :: JSRef VTTCue -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.vertical Mozilla VTTCue.vertical documentation> 
setVertical :: (MonadIO m, ToJSString val) => VTTCue -> val -> m ()
setVertical self val
  = liftIO (js_setVertical (unVTTCue self) (toJSString val))
 
foreign import javascript unsafe "$1[\"vertical\"]" js_getVertical
        :: JSRef VTTCue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.vertical Mozilla VTTCue.vertical documentation> 
getVertical ::
            (MonadIO m, FromJSString result) => VTTCue -> m result
getVertical self
  = liftIO (fromJSString <$> (js_getVertical (unVTTCue self)))
 
foreign import javascript unsafe "$1[\"snapToLines\"] = $2;"
        js_setSnapToLines :: JSRef VTTCue -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.snapToLines Mozilla VTTCue.snapToLines documentation> 
setSnapToLines :: (MonadIO m) => VTTCue -> Bool -> m ()
setSnapToLines self val
  = liftIO (js_setSnapToLines (unVTTCue self) val)
 
foreign import javascript unsafe "($1[\"snapToLines\"] ? 1 : 0)"
        js_getSnapToLines :: JSRef VTTCue -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.snapToLines Mozilla VTTCue.snapToLines documentation> 
getSnapToLines :: (MonadIO m) => VTTCue -> m Bool
getSnapToLines self = liftIO (js_getSnapToLines (unVTTCue self))
 
foreign import javascript unsafe "$1[\"line\"] = $2;" js_setLine ::
        JSRef VTTCue -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.line Mozilla VTTCue.line documentation> 
setLine :: (MonadIO m) => VTTCue -> Double -> m ()
setLine self val = liftIO (js_setLine (unVTTCue self) val)
 
foreign import javascript unsafe "$1[\"line\"]" js_getLine ::
        JSRef VTTCue -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.line Mozilla VTTCue.line documentation> 
getLine :: (MonadIO m) => VTTCue -> m Double
getLine self = liftIO (js_getLine (unVTTCue self))
 
foreign import javascript unsafe "$1[\"position\"] = $2;"
        js_setPosition :: JSRef VTTCue -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.position Mozilla VTTCue.position documentation> 
setPosition :: (MonadIO m) => VTTCue -> Double -> m ()
setPosition self val = liftIO (js_setPosition (unVTTCue self) val)
 
foreign import javascript unsafe "$1[\"position\"]" js_getPosition
        :: JSRef VTTCue -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.position Mozilla VTTCue.position documentation> 
getPosition :: (MonadIO m) => VTTCue -> m Double
getPosition self = liftIO (js_getPosition (unVTTCue self))
 
foreign import javascript unsafe "$1[\"size\"] = $2;" js_setSize ::
        JSRef VTTCue -> Double -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.size Mozilla VTTCue.size documentation> 
setSize :: (MonadIO m) => VTTCue -> Double -> m ()
setSize self val = liftIO (js_setSize (unVTTCue self) val)
 
foreign import javascript unsafe "$1[\"size\"]" js_getSize ::
        JSRef VTTCue -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.size Mozilla VTTCue.size documentation> 
getSize :: (MonadIO m) => VTTCue -> m Double
getSize self = liftIO (js_getSize (unVTTCue self))
 
foreign import javascript unsafe "$1[\"align\"] = $2;" js_setAlign
        :: JSRef VTTCue -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.align Mozilla VTTCue.align documentation> 
setAlign :: (MonadIO m, ToJSString val) => VTTCue -> val -> m ()
setAlign self val
  = liftIO (js_setAlign (unVTTCue self) (toJSString val))
 
foreign import javascript unsafe "$1[\"align\"]" js_getAlign ::
        JSRef VTTCue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.align Mozilla VTTCue.align documentation> 
getAlign :: (MonadIO m, FromJSString result) => VTTCue -> m result
getAlign self
  = liftIO (fromJSString <$> (js_getAlign (unVTTCue self)))
 
foreign import javascript unsafe "$1[\"text\"] = $2;" js_setText ::
        JSRef VTTCue -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.text Mozilla VTTCue.text documentation> 
setText :: (MonadIO m, ToJSString val) => VTTCue -> val -> m ()
setText self val
  = liftIO (js_setText (unVTTCue self) (toJSString val))
 
foreign import javascript unsafe "$1[\"text\"]" js_getText ::
        JSRef VTTCue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.text Mozilla VTTCue.text documentation> 
getText :: (MonadIO m, FromJSString result) => VTTCue -> m result
getText self
  = liftIO (fromJSString <$> (js_getText (unVTTCue self)))
 
foreign import javascript unsafe "$1[\"regionId\"] = $2;"
        js_setRegionId :: JSRef VTTCue -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.regionId Mozilla VTTCue.regionId documentation> 
setRegionId :: (MonadIO m, ToJSString val) => VTTCue -> val -> m ()
setRegionId self val
  = liftIO (js_setRegionId (unVTTCue self) (toJSString val))
 
foreign import javascript unsafe "$1[\"regionId\"]" js_getRegionId
        :: JSRef VTTCue -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/VTTCue.regionId Mozilla VTTCue.regionId documentation> 
getRegionId ::
            (MonadIO m, FromJSString result) => VTTCue -> m result
getRegionId self
  = liftIO (fromJSString <$> (js_getRegionId (unVTTCue self)))
#else
module GHCJS.DOM.VTTCue (
  ) where
#endif
