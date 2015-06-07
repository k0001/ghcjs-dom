{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.PluginArray
       (js_item, item, js_namedItem, namedItem, js_refresh, refresh,
        js_getLength, getLength, PluginArray, castToPluginArray,
        gTypePluginArray)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap)
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.Enums
 
foreign import javascript unsafe "$1[\"item\"]($2)" js_item ::
        JSRef PluginArray -> Word -> IO (JSRef Plugin)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.item Mozilla PluginArray.item documentation> 
item :: (MonadIO m) => PluginArray -> Word -> m (Maybe Plugin)
item self index
  = liftIO ((js_item (unPluginArray self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"namedItem\"]($2)"
        js_namedItem :: JSRef PluginArray -> JSString -> IO (JSRef Plugin)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.namedItem Mozilla PluginArray.namedItem documentation> 
namedItem ::
          (MonadIO m, ToJSString name) =>
            PluginArray -> name -> m (Maybe Plugin)
namedItem self name
  = liftIO
      ((js_namedItem (unPluginArray self) (toJSString name)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"refresh\"]($2)" js_refresh
        :: JSRef PluginArray -> Bool -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.refresh Mozilla PluginArray.refresh documentation> 
refresh :: (MonadIO m) => PluginArray -> Bool -> m ()
refresh self reload
  = liftIO (js_refresh (unPluginArray self) reload)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef PluginArray -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/PluginArray.length Mozilla PluginArray.length documentation> 
getLength :: (MonadIO m) => PluginArray -> m Word
getLength self = liftIO (js_getLength (unPluginArray self))