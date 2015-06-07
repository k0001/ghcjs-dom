{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.FileList
       (js_item, item, js_getLength, getLength, FileList, castToFileList,
        gTypeFileList)
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
        JSRef FileList -> Word -> IO (JSRef File)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileList.item Mozilla FileList.item documentation> 
item :: (MonadIO m) => FileList -> Word -> m (Maybe File)
item self index
  = liftIO ((js_item (unFileList self) index) >>= fromJSRef)
 
foreign import javascript unsafe "$1[\"length\"]" js_getLength ::
        JSRef FileList -> IO Word

-- | <https://developer.mozilla.org/en-US/docs/Web/API/FileList.length Mozilla FileList.length documentation> 
getLength :: (MonadIO m) => FileList -> m Word
getLength self = liftIO (js_getLength (unFileList self))