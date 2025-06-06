<div class="leftside-menu">
    <a href="{{ route('admin.dashboard') }}" class="logo logo-light">
        <span class="logo-lg">
            <h4 class="text-center text-white ms-1 mt-2">PERPUSTAKAAN</h4>
            <h4 class="text-center text-white ms-1 mb-2">SMPN 11 Kota Jambi</h4>
        </span>
        <span class="logo-sm">
            <img src="{{ asset('assets/images/logo/logo.png') }}" alt="small logo">
        </span>
    </a>
    <a href="{{ route('admin.dashboard') }}" class="logo logo-dark">
        <span class="logo-lg">
            <h4 class="text-center text-white ms-1 mt-2">PERPUSTAKAAN</h4>
            <h4 class="text-center text-white ms-1 mb-2">SMPN 11 Kota Jambi</h4>
        </span>
        <span class="logo-sm">
            <img src="{{ asset('assets/images/logo/logo.png') }}" alt="small logo">
        </span>
    </a>
    <div class="button-sm-hover" data-bs-toggle="tooltip" data-bs-placement="right" title="Show Full Sidebar">
        <i class="ri-checkbox-blank-circle-line align-middle"></i>
    </div>
    <div class="button-close-fullsidebar">
        <i class="ri-close-fill align-middle"></i>
    </div>
    <div class="h-100" id="leftside-menu-container" data-simplebar>
        <div class="leftbar-user">
            <a href="javascript:;">
                <img src="{{ asset('storage/profil/'. Auth::user()->foto) }}" alt="user-image" height="42" class="rounded-circle bg-secondary-subtle shadow-sm">
                <span class="leftbar-user-name mt-2">{{ Auth::user()->nama }}</span>
            </a>
        </div>
        <ul class="side-nav">
            <li class="side-nav-title">Navigasi</li>
            <li class="side-nav-item {{ (request()->is('admin/dashboard*')) ? 'active' : '' }}">
                <a href="{{ route('admin.dashboard') }}" class="side-nav-link">
                    <i class="ri-home-4-line"></i>
                    <span> Dashboard </span>
                </a>
            </li>
            <li class="side-nav-title">Data</li>
            <li class="side-nav-item {{ (request()->is('admin/petugas*')) ? 'active' : '' }}">
                <a href="{{ route('admin.petugas') }}" class="side-nav-link">
                    <i class="ri-user-2-line"></i>
                    <span> Petugas </span>
                </a>
            </li>
            <li class="side-nav-item {{ request()->is('admin/siswa*') || request()->is('admin/kelas*') ? 'active' : '' }}">
                <a data-bs-toggle="collapse" href="#sidebarSiswa" aria-expanded="{{ request()->is('admin/siswa*') || request()->is('admin/kelas*') ? 'ture' : 'false' }}" aria-controls="sidebarSiswa" class="side-nav-link">
                    <i class="ri-graduation-cap-line"></i>
                    <span> Siswa </span>
                    <span class="menu-arrow"></span>
                </a>
                <div class="collapse {{ request()->is('admin/siswa*') || request()->is('admin/kelas*') ? 'show' : '' }}" id="sidebarSiswa">
                    <ul class="side-nav-second-level">
                        <li class="{{ request()->is('admin/kelas*') ? 'active' : '' }}">
                            <a href="{{ route('admin.kelas') }}">Kelas</a>
                        </li>
                        <li class="{{ request()->is('admin/siswa*') ? 'active' : '' }}">
                            <a href="{{ route('admin.siswa') }}">Siswa</a>
                        </li>
                    </ul>
                </div>
            </li>
            <li class="side-nav-item {{ (request()->is('admin/buku*')) ? 'active' : '' }}">
                <a href="{{ route('admin.buku') }}" class="side-nav-link">
                    <i class="ri-book-open-line"></i>
                    <span> Buku </span>
                </a>
            </li>
            <li class="side-nav-title">Lainnya</li>
            <li class="side-nav-item {{ (request()->is('admin/laporan*')) ? 'active' : '' }}">
                <a href="{{ route('admin.laporan') }}" class="side-nav-link">
                    <i class="ri-archive-line"></i>
                    <span> Laporan </span>
                </a>
            </li>
            <li class="side-nav-title">Pengaturan</li>
            <li class="side-nav-item {{ (request()->is('admin/denda*')) ? 'active' : '' }}">
                <a href="{{ route('admin.denda') }}" class="side-nav-link">
                    <i class="ri-hand-coin-line"></i>
                    <span> Denda </span>
                </a>
            </li>
        </ul>
        <div class="clearfix"></div>
    </div>
</div>
