'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "067ee4ce180ff1b025fc68a77de9a730",
"index.html": "e6ad4f1857e4975fc97897de57f3f59b",
"/": "e6ad4f1857e4975fc97897de57f3f59b",
"main.dart.js": "f9789235178941cd46e9fc7ab454adb5",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "b2435279b85944187901ed2d1191193e",
"icons/favicon-16x16.png": "b2435279b85944187901ed2d1191193e",
"icons/favicon.ico": "9f2b3beee21c91c4d3ec089386168024",
"icons/apple-icon.png": "b51720d75728e9e0d7c1663f160669b6",
"icons/apple-icon-144x144.png": "2865fe29cee413cdefe6920df6a225d1",
"icons/android-icon-192x192.png": "2bcb4427c5ffff1f1dc32413ad6d4146",
"icons/apple-icon-precomposed.png": "b51720d75728e9e0d7c1663f160669b6",
"icons/apple-icon-114x114.png": "37549b86071674083d00586ea121a3ab",
"icons/ms-icon-310x310.png": "41929685cd7c6c7c0da5a2ec138b898e",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/ms-icon-144x144.png": "2865fe29cee413cdefe6920df6a225d1",
"icons/apple-icon-57x57.png": "e67c5c4f0ec66bfb4e1eec4283b1b98a",
"icons/apple-icon-152x152.png": "cae51a37c7e850587c492537dae4e4b0",
"icons/ms-icon-150x150.png": "e5f391c832a1675b73db8423f28a73dc",
"icons/android-icon-72x72.png": "d1f6c00ab55256048dae5d1a42b2aa38",
"icons/android-icon-96x96.png": "9fce4c5fe18a760639dce278015a9f3f",
"icons/android-icon-36x36.png": "daf828717957e70008e78e391e8666aa",
"icons/apple-icon-180x180.png": "4261b79a6e7e27368cbc79f08bb013d8",
"icons/favicon-96x96.png": "9fce4c5fe18a760639dce278015a9f3f",
"icons/manifest.json": "b58fcfa7628c9205cb11a1b2c3e8f99a",
"icons/android-icon-48x48.png": "adc805b59c51c669f042b605b48f6075",
"icons/apple-icon-76x76.png": "eae893875b8f248609da0e01ba92b646",
"icons/apple-icon-60x60.png": "1557fb80edadd760739c6fddb2469060",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/browserconfig.xml": "653d077300a12f09a69caeea7a8947f8",
"icons/android-icon-144x144.png": "2865fe29cee413cdefe6920df6a225d1",
"icons/apple-icon-72x72.png": "d1f6c00ab55256048dae5d1a42b2aa38",
"icons/apple-icon-120x120.png": "2ad22989ea7bf448d8efa547832239c0",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/favicon-32x32.png": "277dc6a454da0648d901a86370d3dc1a",
"icons/ms-icon-70x70.png": "477e526574df0382aa57319ca2c4b16c",
"manifest.json": "80379f53baabda9f6a3f4d3db34b41b2",
"assets/AssetManifest.json": "9cae173a83a6fdfc325837a20a853263",
"assets/NOTICES": "54bbac4d93d6e796f02a8d312430339d",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "495bff0950adfeeda31e990ad8959c51",
"assets/fonts/MaterialIcons-Regular.otf": "32fce58e2acb9c420eab0fe7b828b761",
"assets/assets/image/collab2.png": "d390892206f20430cc63800c2b18e72c",
"assets/assets/image/collab3.png": "835849a6ec7b463a3f4aca6ca2c57379",
"assets/assets/image/collab1.png": "0c03c9a0b768faa7e5a6246c2bb5c382",
"assets/assets/image/collab0.png": "395cfa59fcede8d0c5b88f5240be6f93",
"assets/assets/image/team_building.jpg": "f1f4430213105dbe707b30ee9ebdbf37",
"assets/assets/image/congrats.gif": "499db27be0c9c52ace641b578d8ff081",
"assets/assets/image/PhotosArtboard%252005.jpg": "3aa6b32cd8c30689881fcbb001e19596",
"assets/assets/image/PhotosArtboard%2520010.jpg": "f7cb945339a03561cef9c891dad6ea85",
"assets/assets/image/fuba1.jpg": "4a1365d7df36d6bab29164e6bcda7251",
"assets/assets/image/fuba0.jpg": "9c0ab3ff4de8a2248fe67df9df470c1e",
"assets/assets/image/PhotosArtboard%2520011.jpg": "9d24233983ca91bfe36ea090b9bce6d3",
"assets/assets/image/Logo_1Y-03.png": "6e77fb742d6a0f2603be01816c093567",
"assets/assets/image/PhotosArtboard%252004.jpg": "0f79a970ee57b82fe71ec9b36b0d2b2f",
"assets/assets/image/PhotosArtboard%252006.jpg": "29ba37b59a155e6d4682f99396bf99c3",
"assets/assets/image/PhotosArtboard%2520012.jpg": "ed9467f65c5bb6b0d8e358e95aec4f21",
"assets/assets/image/PhotosArtboard%252007.jpg": "859c2ebdfda3f4865815bacc5ba37318",
"assets/assets/image/6.jpeg": "45aab47108ecb484dcf63414cd06a813",
"assets/assets/image/7.jpeg": "1ff496f38d7765c006c88b36d3f148e1",
"assets/assets/image/PhotosArtboard%252003.jpg": "287b35fc556060af414c78d9a1bbe82c",
"assets/assets/image/Illustration.png": "800282b9139debfa5467136b5e6a5967",
"assets/assets/image/PhotosArtboard%252002.jpg": "27e2acab7132e1810b696f663ec6e263",
"assets/assets/image/PhotosArtboard%252001.jpg": "277fae8397176241f6324e03c681778e",
"assets/assets/image/PhotosArtboard%252009.jpg": "0ce0516a02ffc51ff326d24b993f8c34",
"assets/assets/image/fire.gif": "c7ece4d1b1655434e209d2b8c1e0207d",
"assets/assets/image/PhotosArtboard%252008.jpg": "1bbb42f248d72f73b5cc95dd4c72ce97",
"assets/assets/image/4.jpg": "2ec1baf6da5c10de8ce18c53d1451aff",
"assets/assets/image/IGNITER.png": "f2d1fb9cbdaba5060372cdc57c3e3534",
"assets/assets/image/5.jpg": "8f2e4f2aa90e5d26df54210e5f3be055",
"assets/assets/image/2.jpg": "c1463431daf87734e1ff1c19af7eac7a",
"assets/assets/image/3.jpg": "4aaaf49330a08aa05a2bfba0baf71524",
"assets/assets/image/1.jpg": "a1ff03796cf7ad8b8a5ce7d7eeb346b1",
"assets/assets/icon/quote.png": "770dc2b2afa2a9debdb8f05f07261dee",
"assets/assets/icon/logo.png": "0097fe3987a416a506155f78793b5e1e",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "d1fde2560be92c0b07ad9cf9acb10d05",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "1165572f59d51e963a5bf9bdda61e39b",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "19d8b35640d13140fe4e6f3b8d450f04",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
