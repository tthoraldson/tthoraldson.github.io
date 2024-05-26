<nav id="sidebar"
  class="flex-shrink hidden leading-relaxed md:block md:sticky md:top-0 md:max-h-screen md:overflow-y-auto md:w-48 xl:w-64">
  <div class="px-2 py-2 text-gray-800">
    <div id="indexing-links" class="flex flex-row float-right p-2 space-x-2 text-gray-500">
      <a href="${ema:tagIndexUrl}" title="View tags">
        <svg style="width: 1rem;" class="hover:text-${theme}-700" fill="none" stroke="currentColor"
          viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
            d="M7 7h.01M7 3h5c.512 0 1.024.195 1.414.586l7 7a2 2 0 010 2.828l-7 7a2 2 0 01-2.828 0l-7-7A1.994 1.994 0 013 12V7a4 4 0 014-4z">
          </path>
        </svg>
      </a>
      <a title="Search (Ctrl+K)" class="cursor-pointer"
        onclick="window.emanote.stork.toggleSearch()">
        <apply template="stork/stork-icon" />
      </a>
    </div>

    <div id="site-logo" class="pl-2">
      <div class="flex items-center my-2 space-x-2 justify-left">
        <a href="${ema:homeUrl}" title="Go to Home">
          <ema:metadata>
            <with var="template">
              <!-- The style width attribute here is to prevent huge
                      icon from displaying at those rare occasions when Tailwind
                      hasn't kicked in immediately on page load 
                      -->
              <img style="width: 1rem;"
                class="transition transform hover:scale-110 hover:opacity-80"
                src="${value:iconUrl}" />
            </with>
          </ema:metadata>
        </a>
        <a class="font-bold truncate" title="Go to Home" href="${ema:homeUrl}">
          Home
        </a>
      </div>
    </div>

    <ema:route-tree>
      <apply template="sidebar-tree" />
    </ema:route-tree>

  </div>
</nav>