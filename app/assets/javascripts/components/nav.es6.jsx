class Nav extends React.Component {
  render () {
    return (
      <div className="mdl-layout mdl-js-layout mdl-layout--fixed-header">
        {/* Always shows a header, even in smaller screens. */}
        <header className="mdl-layout__header">
          <div className="mdl-layout__header-row">
            {/* Title */}
            <span className="mdl-layout-title">Title</span>
            {/* Add spacer, to align navigation to the right. */}
            <div className="mdl-layout-spacer"></div>
            {/* Navigation. We hide it in small screens. */}
            <nav className="mdl-navigation mdl-layout--large-screen-only">
              <a className="mdl-navigation__link" href="">Link</a>
              <a className="mdl-navigation__link" href="">Link</a>
              <a className="mdl-navigation__link" href="">Link</a>
              <a className="mdl-navigation__link" href="">Link</a>
            </nav>
          </div>
        </header>
      </div>
    );
  }
}

