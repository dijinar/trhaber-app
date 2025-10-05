import '../../features/home/domain/models/video_news_model/video_news_model.dart';
import '../models/news/news_model.dart';

final dummyVideoNews = [
  const VideoNewsModel(
    title: "Büyük İsrail Hayali: Hedef Türkiye",
    coverImage: "https://example.com/video1.jpg",
    videoUrl: "https://example.com/video1.mp4",
    viewCount: 323000,
  ),
  const VideoNewsModel(
    title: "Türkiye Arap Dünyasını Kurtardı",
    coverImage: "https://example.com/video2.jpg",
    videoUrl: "https://example.com/video2.mp4",
    viewCount: 15700,
  ),
  const VideoNewsModel(
    title: "Dikkat! Çocuklar ve Bebekler Hedefte",
    coverImage: "https://example.com/video3.jpg",
    videoUrl: "https://example.com/video3.mp4",
    viewCount: 37900,
  ),
];

final List<NewsModel> dummySavedNews = [
  NewsModel(
    id: 1,
    title: 'Türkiye\'de Teknoloji Sektörü Büyüyor',
    underTitle: 'Teknoloji yatırımları artışta',
    description:
        'Son yıllarda Türkiye\'de teknoloji sektöründe önemli gelişmeler yaşanıyor. Yerel ve uluslararası yatırımlar artıyor.',
    imageUrl: 'https://picsum.photos/200/300',
    author: 'Ahmet Yılmaz',
    publishedAt: DateTime.now().subtract(const Duration(hours: 2)),
    type: 'Teknoloji',
    isSaved: true,
  ),
  NewsModel(
    id: 2,
    title: 'Yapay Zeka ve Geleceğimiz',
    underTitle: 'Yapay zekanın etkileri',
    description:
        'Yapay zeka teknolojilerinin hayatımıza etkileri ve gelecekte bizi bekleyen değişimler hakkında detaylı bir analiz.',
    imageUrl: 'https://picsum.photos/200/301',
    author: 'Ayşe Demir',
    publishedAt: DateTime.now().subtract(const Duration(hours: 4)),
    type: 'Bilim',
    isSaved: true,
  ),
  NewsModel(
    id: 3,
    title: 'Sürdürülebilir Enerji Projeleri',
    underTitle: 'Yenilenebilir enerji yatırımları',
    description:
        'Türkiye\'nin yenilenebilir enerji yatırımları ve sürdürülebilir enerji projeleri hakkında güncel bilgiler.',
    imageUrl: 'https://picsum.photos/200/302',
    author: 'Mehmet Kaya',
    publishedAt: DateTime.now().subtract(const Duration(hours: 6)),
    type: 'Enerji',
    isSaved: true,
  ),
  NewsModel(
    id: 4,
    title: 'Dijital Dönüşüm ve İş Dünyası',
    underTitle: 'Şirketlerin dijital adaptasyonu',
    description:
        'İş dünyasında dijital dönüşüm süreçleri ve şirketlerin adaptasyon stratejileri.',
    imageUrl: 'https://picsum.photos/200/303',
    author: 'Zeynep Şahin',
    publishedAt: DateTime.now().subtract(const Duration(hours: 8)),
    type: 'Ekonomi',
    isSaved: true,
  ),
];
