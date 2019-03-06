import { connect } from 'react-redux';
import { fetchUser } from '../../actions/user_actions';
import UserShow from './user_show';

const mapStateToProps = ({entities: { users }}, ownProps) => ({
  user: users[ownProps.match.params.userId] || { name: ""},
});

const mapDispatchToProps = dispatch => ({
  fetchUser: id => dispatch(fetchUser(id)),
});

export default connect(mapStateToProps, mapDispatchToProps)(UserShow);