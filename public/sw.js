// Cache disabled to prevent old frontend assets from being shown.
self.addEventListener('install',e=>e.waitUntil(self.skipWaiting()));
self.addEventListener('activate',e=>e.waitUntil((async()=>{const keys=await caches.keys();await Promise.all(keys.map(k=>caches.delete(k)));await self.registration.unregister();await self.clients.claim();})()));
self.addEventListener('fetch',e=>{});
