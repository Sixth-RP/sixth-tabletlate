window.addEventListener('message', function(event) {
    const data = event.data;
    if (data.action === 'openTablet') {
        document.getElementById('tablet').style.display = 'flex';
        populateApps(data.apps);
    }
});

function populateApps(apps) {
    const appsContainer = document.getElementById('apps');
    appsContainer.innerHTML = '';
    apps.forEach(app => {
        const appDiv = document.createElement('div');
        appDiv.className = 'app';
        appDiv.onclick = () => appClick(app);
        appDiv.innerHTML = `
            <i class="${app.icon}"></i>
            <span>${app.name}</span>
        `;
        appsContainer.appendChild(appDiv);
    });
}

function closeTablet() {
    fetch('https://sixth-tablet/closeTablet', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({})
    });
    document.getElementById('tablet').style.display = 'none';
}

function appClick(app) {
    fetch('https://sixth-tablet/appClick', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ app: app })
    });
}