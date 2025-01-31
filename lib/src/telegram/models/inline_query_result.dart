/*
 * TeleDart - Telegram Bot API for Dart
 * Copyright (C) 2019  Dino PH Leung
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

part of '../model.dart';

/// This object represents one result of an inline query.
///
/// Telegram clients currently support results of the following 20 types:
/// * [InlineQueryResultCachedAudio](https://core.telegram.org/bots/api#inlinequeryresultcachedaudio)
/// * [InlineQueryResultCachedDocument](https://core.telegram.org/bots/api#inlinequeryresultcacheddocument)
/// * [InlineQueryResultCachedGif](https://core.telegram.org/bots/api#inlinequeryresultcachedgif)
/// * [InlineQueryResultCachedMpeg4Gif](https://core.telegram.org/bots/api#inlinequeryresultcachedmpeg4gif)
/// * [InlineQueryResultCachedPhoto](https://core.telegram.org/bots/api#inlinequeryresultcachedphoto)
/// * [InlineQueryResultCachedSticker](https://core.telegram.org/bots/api#inlinequeryresultcachedsticker)
/// * [InlineQueryResultCachedVideo](https://core.telegram.org/bots/api#inlinequeryresultcachedvideo)
/// * [InlineQueryResultCachedVoice](https://core.telegram.org/bots/api#inlinequeryresultcachedvoice)
/// * [InlineQueryResultArticle](https://core.telegram.org/bots/api#inlinequeryresultarticle)
/// * [InlineQueryResultAudio](https://core.telegram.org/bots/api#inlinequeryresultaudio)
/// * [InlineQueryResultContact](https://core.telegram.org/bots/api#inlinequeryresultcontact)
/// * [InlineQueryResultGame](https://core.telegram.org/bots/api#inlinequeryresultgame)
/// * [InlineQueryResultDocument](https://core.telegram.org/bots/api#inlinequeryresultdocument)
/// * [InlineQueryResultGif](https://core.telegram.org/bots/api#inlinequeryresultgif)
/// * [InlineQueryResultLocation](https://core.telegram.org/bots/api#inlinequeryresultlocation)
/// * [InlineQueryResultMpeg4Gif](https://core.telegram.org/bots/api#inlinequeryresultmpeg4gif)
/// * [InlineQueryResultPhoto](https://core.telegram.org/bots/api#inlinequeryresultphoto)
/// * [InlineQueryResultVenue](https://core.telegram.org/bots/api#inlinequeryresultvenue)
/// * [InlineQueryResultVideo](https://core.telegram.org/bots/api#inlinequeryresultvideo)
/// * [InlineQueryResultVoice](https://core.telegram.org/bots/api#inlinequeryresultvoice)
///
/// https://core.telegram.org/bots/api#inlinequeryresult
@JsonSerializable()
class InlineQueryResult {
  static const ARTICLE = 'article';
  static const AUDIO = 'audio';
  static const DOCUMENT = 'document';
  static const GIF = 'gif';
  static const MPEG4_GIF = 'mpeg4_gif';
  static const PHOTO = 'photo';
  static const STICKER = 'sticker';
  static const VIDEO = 'video';
  static const VOICE = 'voice';
  static const CONTACT = 'contact';
  static const GAME = 'game';
  static const LOCATION = 'location';
  static const VENUE = 'venue';

  String type;
  String id;
  InlineKeyboardMarkup? reply_markup;
  InlineQueryResult({
    required this.type,
    required this.id,
    this.reply_markup,
  });
  factory InlineQueryResult.fromJson(Map<String, dynamic> json) =>
      _$InlineQueryResultFromJson(json);
  Map<String, dynamic> toJson() => _$InlineQueryResultToJson(this);
}
