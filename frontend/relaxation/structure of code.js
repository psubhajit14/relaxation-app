/* 

! Core
*   a. error
*	b. exception
*	c. external class wrapper
*	d. failure
*   e. usecase

--------------------------------------
? ----- Data Query Feature -----
! 1 .Presentation
*	a. Widget and Pages 
*	b. bloc and cubic
! 2.Domain
*	a. usecase
? --------- Impl of core Usecase file ----------
?   -- Get List Data --
*       i.GetAllSongs
*       ii.GetAllAlbum
*       iii.GetAllPlaylist
?   -- Get Single Data --
*       iv.GetSongInfo
*       v.GetAlbumInfo
*       vi.GetPlaylistInfo
?   -- Operation On Playlist --
*       vii.AddSongToPlaylist
*       viii.RemoveSongToPlaylist
*       ix.CreatePlaylist
*       x.RemovePlaylist
*       
*      
*	b. entity
?   --- Data Model with only needed info ---
*       i.SongInfo
*       ii.AlbumInfo
*       iii.PlaylistInfo
*       
*	c. repository
?   --- Contract of repository that work as interface --- 
*       i.AudioQueryRepository: will take LocalAudioDataSource as parameter	
! 3.Data
*	a. repository
?   --- Implemation of repository that interface between datasource and usecase ---
*       i.AudioQueryRepositoryImpl: will take LocalAudioDataSource as parameter	and clean each model and send to usecase
*	b. model
?   --- Real structure of data model with all info ---
*       i.SongInfoModel
*       ii.AlbumInfoModel
*       iii.PlaylistInfoModel
*	c. datasource(local)  
?   --- Used by repository impl that use to fetch data ---
*       i.LocalAudioDataSource: will take AudioQuery as parameter
?   ----- Wrap main FlutterAudioQuery class -----
*        FlutterAudioQuery : .getAlbums(), 
*                      .getSongs(), .getSongsFromAlbum(album: album.name),
*                      .getPlaylists(), .getSongsFromPlaylist(playlist: playlist[0]),  
*                      .searchAlbums(query: "a"), .searchSongs(query: "la")


TODO: remote datasource will not be present on this version

---------------------------------------

? test:- same folder structure like lib 

*/