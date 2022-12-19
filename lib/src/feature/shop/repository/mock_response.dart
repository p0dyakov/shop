const String mockResponse =
    '{"results":[{"id":"1","name":"Magnit","description":"A chain of retail stores, the third largest private company in Russia by revenue","deliveryTimeInMinutes":15,"deliveryPrice":100,"photoUrl":"https://eda.yandex/images/3580810/143b1903135f21c5ae121c4d6f7f8c05-100x100.png","products":[{"id":"1","name":"Chicken egg C0","photoUrl":"https://avatars.mds.yandex.net/get-eda/3504598/a0c9945d0b6e910ff7d5cee52196a5dd/400x400nocrop","characteristic":{"weight":650,"price":110,"manufactureCountry":"Russia","expirationDateInDays":14}},{"id":"2","name":"Bananas","photoUrl":"https://avatars.mds.yandex.net/get-eda/3454897/8b13162b4cbd4657417c318f78c6b98c/400x400nocrop","characteristic":{"weight":1000,"price":80,"manufactureCountry":"Russia","expirationDateInDays":5}},{"id":"3","name":"Tomatoes","photoUrl":"https://avatars.mds.yandex.net/get-eda/3514991/6892fd8cc504660849767609935f4465/400x400nocrop","characteristic":{"weight":500,"price":45,"manufactureCountry":"Russia","expirationDateInDays":5}},{"id":"4","name":"Cucumbers","photoUrl":"https://avatars.mds.yandex.net/get-eda/3806315/166e0c5c7caac015593efab423cc5f63/400x400nocrop","characteristic":{"weight":460,"price":183,"manufactureCountry":"Russia","expirationDateInDays":14}},{"id":"5","name":"Lemons","photoUrl":"https://avatars.mds.yandex.net/get-eda/2794391/01abcad71c86d079e8e84edded25402a/400x400nocrop","characteristic":{"weight":270,"price":44,"manufactureCountry":"Russia","expirationDateInDays":14}},{"id":"6","name":"Blueberry","photoUrl":"https://avatars.mds.yandex.net/get-eda/3502728/a1da8252867bfef12219399a90a10b08/400x400nocrop","characteristic":{"weight":125,"price":129,"manufactureCountry":"Russia","expirationDateInDays":14}},{"id":"7","name":"Mandarins","photoUrl":"https://avatars.mds.yandex.net/get-eda/3512182/4cf8514f399d13903ae73fe143f4e439/400x400nocrop","characteristic":{"weight":810,"price":249,"manufactureCountry":"Russia","expirationDateInDays":14}},{"id":"8","name":"Pears","photoUrl":"https://avatars.mds.yandex.net/get-eda/2806911/635401588bf7c3a340e62086204af443/400x400nocrop","characteristic":{"weight":670,"price":137,"manufactureCountry":"Russia","expirationDateInDays":14}}]},{"id":"2","name":"VkusVill","description":"Russian retail supermarket chain and its own brand of products positioned as healthy food products","deliveryTimeInMinutes":17,"deliveryPrice":150,"photoUrl":"https://eda.yandex/images/3472725/f03286120d80165b2c4ae392a28fc51e-100x100.png","products":[{"id":"1","name":"Chicken egg C0","photoUrl":"https://avatars.mds.yandex.net/get-eda/3504598/a0c9945d0b6e910ff7d5cee52196a5dd/400x400nocrop","characteristic":{"weight":700,"price":135,"manufactureCountry":"Russia","expirationDateInDays":14}},{"id":"2","name":"Bananas","photoUrl":"https://avatars.mds.yandex.net/get-eda/3454897/8b13162b4cbd4657417c318f78c6b98c/400x400nocrop","characteristic":{"weight":1000,"price":70,"manufactureCountry":"Russia","expirationDateInDays":5}},{"id":"3","name":"Tomatoes","photoUrl":"https://avatars.mds.yandex.net/get-eda/3514991/6892fd8cc504660849767609935f4465/400x400nocrop","characteristic":{"weight":400,"price":32,"manufactureCountry":"Russia","expirationDateInDays":5}},{"id":"4","name":"Cucumbers","photoUrl":"https://avatars.mds.yandex.net/get-eda/3806315/166e0c5c7caac015593efab423cc5f63/400x400nocrop","characteristic":{"weight":500,"price":193,"manufactureCountry":"Russia","expirationDateInDays":14}},{"id":"5","name":"Lemons","photoUrl":"https://avatars.mds.yandex.net/get-eda/2794391/01abcad71c86d079e8e84edded25402a/400x400nocrop","characteristic":{"weight":300,"price":35,"manufactureCountry":"Russia","expirationDateInDays":14}},{"id":"6","name":"Blueberry","photoUrl":"https://avatars.mds.yandex.net/get-eda/3502728/a1da8252867bfef12219399a90a10b08/400x400nocrop","characteristic":{"weight":135,"price":149,"manufactureCountry":"Russia","expirationDateInDays":14}},{"id":"7","name":"Mandarins","photoUrl":"https://avatars.mds.yandex.net/get-eda/3512182/4cf8514f399d13903ae73fe143f4e439/400x400nocrop","characteristic":{"weight":710,"price":219,"manufactureCountry":"Russia","expirationDateInDays":14}},{"id":"8","name":"Pears","photoUrl":"https://avatars.mds.yandex.net/get-eda/2806911/635401588bf7c3a340e62086204af443/400x400nocrop","characteristic":{"weight":600,"price":140,"manufactureCountry":"Russia","expirationDateInDays":14}}]},{"id":"3","name":"Lenta","description":"Russian hypermarket chain. The company is registered on Oktyabrsky Island in Kaliningrad","deliveryTimeInMinutes":25,"deliveryPrice":90,"photoUrl":"https://eda.yandex/images/3506707/09c3c84af06abbf61353061cdfde4e9b-100x100.png","products":[{"id":"1","name":"Chicken egg C0","photoUrl":"https://avatars.mds.yandex.net/get-eda/3504598/a0c9945d0b6e910ff7d5cee52196a5dd/400x400nocrop","characteristic":{"weight":700,"price":120,"manufactureCountry":"Russia","expirationDateInDays":14}},{"id":"2","name":"Bananas","photoUrl":"https://avatars.mds.yandex.net/get-eda/3454897/8b13162b4cbd4657417c318f78c6b98c/400x400nocrop","characteristic":{"weight":1000,"price":75,"manufactureCountry":"Russia","expirationDateInDays":5}},{"id":"3","name":"Tomatoes","photoUrl":"https://avatars.mds.yandex.net/get-eda/3514991/6892fd8cc504660849767609935f4465/400x400nocrop","characteristic":{"weight":450,"price":40,"manufactureCountry":"Russia","expirationDateInDays":5}},{"id":"4","name":"Cucumbers","photoUrl":"https://avatars.mds.yandex.net/get-eda/3806315/166e0c5c7caac015593efab423cc5f63/400x400nocrop","characteristic":{"weight":460,"price":183,"manufactureCountry":"Russia","expirationDateInDays":14}},{"id":"5","name":"Mandarins","photoUrl":"https://avatars.mds.yandex.net/get-eda/3512182/4cf8514f399d13903ae73fe143f4e439/400x400nocrop","characteristic":{"weight":700,"price":200,"manufactureCountry":"Russia","expirationDateInDays":14}},{"id":"6","name":"Pears","photoUrl":"https://avatars.mds.yandex.net/get-eda/2806911/635401588bf7c3a340e62086204af443/400x400nocrop","characteristic":{"weight":700,"price":154,"manufactureCountry":"Russia","expirationDateInDays":14}}]}]}';
