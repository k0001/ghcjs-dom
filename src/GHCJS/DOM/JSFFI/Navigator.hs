{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, GHCForeignImportPrim,
             UnboxedTuples, MagicHash, UnliftedFFITypes, LambdaCase #-}
module GHCJS.DOM.JSFFI.Navigator (
    module Generated
  , js_getUserMedia
  , getUserMedia
) where

import GHC.Base (IO(..))
import GHC.Prim (RealWorld, State#, ByteArray#)

import Control.Monad.IO.Class (MonadIO(..))

import GHCJS.Prim (JSRef(..))
import GHCJS.Foreign (jsNull)
import GHCJS.Marshal (fromJSRef, fromJSRefUnchecked)
import GHCJS.Foreign.Callback (releaseCallback)
import GHCJS.DOM.Types

import GHCJS.DOM.JSFFI.NavigatorUserMediaError (throwUserMediaException)
import GHCJS.DOM.JSFFI.Generated.Navigator as Generated hiding (js_getUserMedia, getUserMedia)

foreign import javascript interruptible
        "$1[\"webkitGetUserMedia\"]($2, function(ms) { $c(true, ms); }, function(e) { $c(false, e); });" js_getUserMedia ::
        JSRef Navigator -> JSRef Dictionary -> State# RealWorld -> (# State# RealWorld, Bool, ByteArray# #)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Navigator.webkitGetUserMedia Mozilla Navigator.webkitGetUserMedia documentation>
getUserMedia' :: MonadIO m => Navigator -> Maybe Dictionary -> m (Either NavigatorUserMediaError MediaStream)
getUserMedia' self options = liftIO . IO $ \s# ->
      case js_getUserMedia (unNavigator self) (maybe jsNull unDictionary options) s# of
          (# s2#, False, error #) -> (# s2#, Left  (NavigatorUserMediaError (JSRef error)) #)
          (# s2#, True,  ms    #) -> (# s2#, Right (MediaStream             (JSRef ms  )) #)

getUserMedia :: MonadIO m => Navigator -> Maybe Dictionary -> m MediaStream
getUserMedia self options = getUserMedia' self options >>= either throwUserMediaException return