'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"manifest.json": "d3103f945684a658420f3fb2a581755c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"main.dart.js": "f8c372c73db77c7747226397b23eceed",
"version.json": "5350f8131f3fe3c6ef138abd156df062",
"assets/NOTICES": "543dbd6b78ce42aa887a104d296364a8",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/AssetManifest.json": "0eef65a21da5a6f9e76a58c92cd50b64",
"assets/assets/images/parallax/RTB/background.png": "7e7b48449c654800d5aff984740de8f8",
"assets/assets/images/parallax/RTB/background2.png": "69d5299bd51891a7d8eb8907ef7012ac",
"assets/assets/images/parallax/RTB/background4.png": "539dc6f7453778261422955902b7d6b8",
"assets/assets/images/parallax/RTB/background3.png": "d28a7d9fd45eaff05565e3ddf94f6b21",
"assets/assets/images/parallax/TheDawn/4.png": "2218b6c663200558fb678196b4df23f1",
"assets/assets/images/parallax/TheDawn/3.png": "71e27f01db0981d3177f498c31a4e91a",
"assets/assets/images/parallax/TheDawn/5.png": "c923ff766b0b116f29c184de40bcb460",
"assets/assets/images/parallax/TheDawn/6.png": "0fa5a4c240b0b51ceb4d5c22d16388b7",
"assets/assets/images/parallax/TheDawn/1.png": "449c209cc8385c75fd4789a4898e41ea",
"assets/assets/images/parallax/TheDawn/2.png": "2fa9732248c9dfde48cf6471bd5daeca",
"assets/assets/images/parallax/TheDawn/8.png": "db00b3119a0bd7ae9c727752eabd9cbf",
"assets/assets/images/parallax/TheDawn/7.png": "0bbb4dde1964de7cee45b42eb392774e",
"assets/assets/images/parallax/Island/L2.png": "dd741db50db614517173d9877909ef02",
"assets/assets/images/parallax/Island/L3.png": "8ef3df60af3fd4c0fa4b677c89b499e3",
"assets/assets/images/parallax/Island/L5.png": "c6b94d90b8c18309927148c2d6f12ee1",
"assets/assets/images/parallax/Island/L1.png": "e0e60ae492e798e80cc8718b56ed0ee9",
"assets/assets/images/parallax/Island/L4.png": "d03e1f90ff459fc27372b02d2b506c09",
"assets/assets/images/parallax/_orig/mountain-far.png": "d29a3f7182bc85e258a28325e9a66b5e",
"assets/assets/images/parallax/_orig/bg.png": "8400f2e43cdb2df53c7b459ede375c3a",
"assets/assets/images/parallax/_orig/trees.png": "a8799976ec897f5d83d278e530e7e81b",
"assets/assets/images/parallax/_orig/foreground-trees.png": "d507d6ccb000123631a49e84e050eea6",
"assets/assets/images/parallax/_orig/mountains.png": "ed6474157918bb521b7657076f49fd24",
"assets/assets/images/parallax/Forest/08_Forest.png": "a678b46cb0c1f1acaafa58713db0eafe",
"assets/assets/images/parallax/Forest/10_Sky.png": "97e6b86861633000d5e05aed9c6e21f9",
"assets/assets/images/parallax/Forest/06_Forest.png": "a9244c7fff2605495a3265ce4e23609c",
"assets/assets/images/parallax/Forest/03_Particles.png": "8535d02ec7c26c29cbe3ec27400a0106",
"assets/assets/images/parallax/Forest/05_Particles.png": "e2e10562911b51f0d823b4ecba76eaa3",
"assets/assets/images/parallax/Forest/07_Forest.png": "6eb839289e01db687621e1c1a456e8bf",
"assets/assets/images/parallax/Forest/02_Bushes.png": "369a0ef543c4a7aadf3a04cf4ef51db6",
"assets/assets/images/parallax/Forest/01_Mist.png": "8e898d8599eae12ab214be9ec3b43468",
"assets/assets/images/parallax/Forest/09_Forest.png": "d65937d0ff046a91a7588f06943643cf",
"assets/assets/images/parallax/Forest/04_Forest.png": "b832506759560bc96b3f9d2a90e0f856",
"assets/FontManifest.json": "7b2a36307916a9721811788013e65289",
"assets/AssetManifest.bin.json": "a25f3b60efbeb7578e39b57ae6f1a48b",
"assets/AssetManifest.bin": "a761f3e17c3074a942bd09c1477fad08",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"flutter_bootstrap.js": "f425ed02ed15d97dbb29779c2a079e04",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"index.html": "3852037e1faa3134995d3a9a107a3ba3",
"/": "3852037e1faa3134995d3a9a107a3ba3"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
