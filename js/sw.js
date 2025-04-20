self.addEventListener('install', event => {
  event.waitUntil(
    caches.open('fastfithub-v1').then(cache => {
      return cache.addAll(['../main-site/index.html', '../css/style.css']);
    })
  );
});
self.addEventListener('fetch', event => {
  event.respondWith(
    caches.match(event.request).then(response => {
      return response || fetch(event.request);
    })
  );
});
