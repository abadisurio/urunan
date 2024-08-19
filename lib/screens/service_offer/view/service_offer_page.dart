import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:urunan/app/view/app.dart';
import 'package:urunan/shared/shared.dart';

@RoutePage()
class ServiceOfferPage extends StatelessWidget {
  const ServiceOfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ServiceOfferView();
  }
}

class _ServiceOfferView extends StatelessWidget {
  const _ServiceOfferView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ServiceOffer'),
        elevation: 0,
        forceMaterialTransparency: true,
      ),
      extendBody: true,
      // extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.fromLTRB(
          0,
          0,
          // context.screenPadding.top + kToolbarHeight,
          0,
          context.screenPadding.bottom,
        ),
        children: const [
          _Hero(),
          SizedBox(height: 24),
          _HighlightedServices(),
          _ServiceCatalogList(),
        ],
      ),
    );
  }
}

class _Hero extends StatelessWidget {
  const _Hero();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            'Yang terbaik dari Internet jadi satu.',
            style: context.textTheme.titleLarge?.copyWith(fontSize: 36),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: 250,
          width: 400,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                imageUrl: 'https://picsum.photos/400/250',
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
        const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            '''Apple One menggabungkan hingga lima langganan Apple ke dalam satu harga bulanan yang lebih murah, termasuk penyimpanan iCloud+ sebesar 2 TB. Dan dengan paket Keluarga atau paket Premier, Anda dapat mengundang hingga lima orang lain untuk bergabung, dengan akses pribadi ke semua perangkatnya masing-masing. Kini semakin mudah untuk menikmati lebih banyak, dengan harga lebih hemat.''',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class _HighlightedServices extends StatelessWidget {
  const _HighlightedServices();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            'Yang terbaik dari Internet jadi satu.',
            style: context.textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 8,
            runSpacing: 8,
            children: [
              for (int i = 0; i < 3; i++)
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.red,
                  ),
                  height: 64,
                  width: 64,
                ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            '''Apple One menggabungkan hingga lima langganan Apple ke dalam satu harga bulanan yang lebih murah, termasuk penyimpanan iCloud+ sebesar 2 TB. Dan dengan paket Keluarga atau paket Premier, Anda dapat mengundang hingga lima orang lain untuk bergabung, dengan akses pribadi ke semua perangkatnya masing-masing. Kini semakin mudah untuk menikmati lebih banyak, dengan harga lebih hemat.''',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class _ServiceCatalogList extends StatelessWidget {
  const _ServiceCatalogList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        for (int i = 0; i < 3; i++) const _ServiceCatalog(),
      ],
    );
  }
}

class _ServiceCatalog extends StatelessWidget {
  const _ServiceCatalog();

  @override
  Widget build(BuildContext context) {
    return TapDownScaller(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            // color: Colors.red.shade600,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  children: [
                    CachedNetworkImage(
                      imageUrl: 'https://picsum.photos/400/250',
                      fit: BoxFit.cover,
                      height: 250,
                    ),
                    const Positioned.fill(
                      // bottom: 0,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.0, 0.4, 0.6, 1.0],
                            colors: [
                              Colors.black87,
                              Colors.transparent,
                              Colors.transparent,
                              Colors.black87,
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      top: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Play it again: 3 Body Problem',
                              style: context.textTheme.titleLarge,
                            ),
                            const Text(
                              'Play it again: 3 Body Problem',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Material(
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 12,
                    ),
                    visualDensity: const VisualDensity(vertical: 2),
                    tileColor: Colors.black26,
                    dense: true,
                    title: Text(
                      'Apple One',
                      style: context.textTheme.titleSmall,
                    ),
                    subtitle: const Text('Paket Premium Keluarga 2GB 2GB 2GB'),
                    leading: AspectRatio(
                      aspectRatio: 1,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.red.shade800,
                        ),
                        child: const Icon(Icons.movie),
                      ),
                    ),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
