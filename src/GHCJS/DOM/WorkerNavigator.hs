{-# LANGUAGE CPP, PatternSynonyms #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.WorkerNavigator
       (js_getWebkitTemporaryStorage, getWebkitTemporaryStorage,
        js_getWebkitPersistentStorage, getWebkitPersistentStorage,
        js_getAppName, getAppName, js_getAppVersion, getAppVersion,
        js_getPlatform, getPlatform, js_getUserAgent, getUserAgent,
        js_getOnLine, getOnLine, WorkerNavigator, castToWorkerNavigator,
        gTypeWorkerNavigator)
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

 
foreign import javascript unsafe "$1[\"webkitTemporaryStorage\"]"
        js_getWebkitTemporaryStorage ::
        JSRef WorkerNavigator -> IO (JSRef StorageQuota)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.webkitTemporaryStorage Mozilla WorkerNavigator.webkitTemporaryStorage documentation> 
getWebkitTemporaryStorage ::
                          (MonadIO m) => WorkerNavigator -> m (Maybe StorageQuota)
getWebkitTemporaryStorage self
  = liftIO
      ((js_getWebkitTemporaryStorage (unWorkerNavigator self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"webkitPersistentStorage\"]"
        js_getWebkitPersistentStorage ::
        JSRef WorkerNavigator -> IO (JSRef StorageQuota)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.webkitPersistentStorage Mozilla WorkerNavigator.webkitPersistentStorage documentation> 
getWebkitPersistentStorage ::
                           (MonadIO m) => WorkerNavigator -> m (Maybe StorageQuota)
getWebkitPersistentStorage self
  = liftIO
      ((js_getWebkitPersistentStorage (unWorkerNavigator self)) >>=
         fromJSRef)
 
foreign import javascript unsafe "$1[\"appName\"]" js_getAppName ::
        JSRef WorkerNavigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.appName Mozilla WorkerNavigator.appName documentation> 
getAppName ::
           (MonadIO m, FromJSString result) => WorkerNavigator -> m result
getAppName self
  = liftIO
      (fromJSString <$> (js_getAppName (unWorkerNavigator self)))
 
foreign import javascript unsafe "$1[\"appVersion\"]"
        js_getAppVersion :: JSRef WorkerNavigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.appVersion Mozilla WorkerNavigator.appVersion documentation> 
getAppVersion ::
              (MonadIO m, FromJSString result) => WorkerNavigator -> m result
getAppVersion self
  = liftIO
      (fromJSString <$> (js_getAppVersion (unWorkerNavigator self)))
 
foreign import javascript unsafe "$1[\"platform\"]" js_getPlatform
        :: JSRef WorkerNavigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.platform Mozilla WorkerNavigator.platform documentation> 
getPlatform ::
            (MonadIO m, FromJSString result) => WorkerNavigator -> m result
getPlatform self
  = liftIO
      (fromJSString <$> (js_getPlatform (unWorkerNavigator self)))
 
foreign import javascript unsafe "$1[\"userAgent\"]"
        js_getUserAgent :: JSRef WorkerNavigator -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.userAgent Mozilla WorkerNavigator.userAgent documentation> 
getUserAgent ::
             (MonadIO m, FromJSString result) => WorkerNavigator -> m result
getUserAgent self
  = liftIO
      (fromJSString <$> (js_getUserAgent (unWorkerNavigator self)))
 
foreign import javascript unsafe "($1[\"onLine\"] ? 1 : 0)"
        js_getOnLine :: JSRef WorkerNavigator -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/WorkerNavigator.onLine Mozilla WorkerNavigator.onLine documentation> 
getOnLine :: (MonadIO m) => WorkerNavigator -> m Bool
getOnLine self = liftIO (js_getOnLine (unWorkerNavigator self))
#else
module GHCJS.DOM.WorkerNavigator (
  ) where
#endif
