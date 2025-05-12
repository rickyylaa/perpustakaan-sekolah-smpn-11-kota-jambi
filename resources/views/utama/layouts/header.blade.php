<header id="myHeader">
    <div class="container-fix">
        <div class="row">
            <div class="col-lg-2 col-sm-4 order-sm-2 order-lg-1 col-12">
                <div class="logo d-inline-block d-md-inline-block d-lg-inline">
                    <a href="{{ route('home.utama') }}" class="d-flex justify-content-between align-items-center">
                        <img src="{{ asset('assets/images/logo/logo.png') }}" alt="logo" class="img-fluid" width="50" height="50">
                        <span class="text-dark">
                            Perpustakaan <br>
                            SMPN 11 KOTA JAMBI
                        </span>
                    </a>
                </div>
            </div>
            <div class="col-lg-8 col-sm-4 order-sm-1 order-lg-2 col-4">
                <nav class="navbar navbar-expand-lg">
                    <button class="navbar-toggler offcanvas-toggle" type="button" data-toggle="offcanvas" data-target="#navbar-collapse">☰ <span>Menu</span>
                    </button>
                    <div class="navbar-offcanvas navbar-offcanvas-touch" id="navbar-collapse">
                        <ul class="navbar-nav">
                            <li class="nav-item {{ (request()->is('/')) ? 'active' : '' }}">
                                <a class="nav-link" href="{{ route('home.utama') }}">Beranda</a>
                            </li>
                            <li class="nav-item {{ (request()->is('buku*')) ? 'active' : '' }}">
                                <a class="nav-link" href="{{ route('home.buku') }}">Buku</a>
                            </li>
                            <li class="nav-item {{ (request()->is('tata-tertib')) ? 'active' : '' }}">
                                <a class="nav-link" href="{{ route('home.tataTertib') }}">Tata Tertib</a>
                            </li>
                            <li class="nav-item {{ (request()->is('visi-misi')) ? 'active' : '' }}">
                                <a class="nav-link" href="{{ route('home.visiMisi') }}">Visi Misi</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            <div class="col-lg-2 col-sm-4 order-sm-3 order-lg-3 col-8">
                <div class="block-right">
                    <div class="setting">
                        @auth
                            <a href="{{ route('login') }}">
                                Dashboard
                            </a>
                        @else
                            <a href="{{ route('login') }}">
                                Masuk
                            </a>
                        @endauth
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
